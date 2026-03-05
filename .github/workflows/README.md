# CI/CD Pipeline Overview (`app-pipeline.yaml`)

This document provides an overview of key mechanisms within the `app-pipeline.yaml` GitHub Actions workflow, focusing on runner selection and environment setup.

## 1. Dynamic Runner Selection (`determine-runner` job)

To optimize build times and utilize specific machine configurations, the pipeline prioritizes using self-hosted runners when available.

### x86 Runner (Android/Linux builds)

- **Process**: The `determine-runner` job queries the GitHub API for all available runners within the **organization**.
- **Criteria**: It looks for a runner that is `online`, not `busy`, and has the label `X64`.
- **Fallback**: If no suitable self-hosted runner is found, the workflow defaults to `ubuntu-latest`.
- **Output**: The result (`X64` or `ubuntu-latest`) is passed to jobs like `build-validations`, `android-stage-build`, and `widgetbook-deployment`.

```yaml
# x86 runner selection
x86_available=$(echo "$org_runners" | jq -r '.runners[] | select(.status == "online" and .busy == false) | select(.labels != null) | select((.labels[] | select(.name | contains("X64"))) != null) | .name' 2>/dev/null | head -1)

if [ -n "$x86_available" ]; then
  echo "runner-x86=X64" >> $GITHUB_OUTPUT
else
  echo "runner-x86=ubuntu-latest" >> $GITHUB_OUTPUT
fi
```

### macOS Runner (iOS builds)

- **Process**: The job queries the GitHub API for runners registered at the **repository** level (not organization).
- **Criteria**: It looks for a runner that is `online`, not `busy`, and has the label `macOS`.
- **Fallback**: If no suitable self-hosted runner is found, the workflow defaults to `macos-latest`.
- **Output**: The result (`macOS` or `macos-latest`) is passed to the `ios-stage-build` job.

```yaml
# macOS runner selection
macOS_available=$(echo "$repo_runners" | jq -r '.runners[] | select(.status == "online" and .busy == false) | select(.labels != null) | select((.labels[] | select(.name | contains("macOS"))) != null) | .name' 2>/dev/null)

if [ -n "$macOS_available" ]; then
  echo "runner-macos=macOS" >> $GITHUB_OUTPUT
else
  echo "runner-macos=macos-latest" >> $GITHUB_OUTPUT
fi
```

## 2. Bypassing Self-Hosted Runners (`BYPASS_LOCAL`)

There are scenarios where you might need to force the workflow to use GitHub-hosted runners, such as when self-hosted runners are down for maintenance or for debugging purposes.

- **Mechanism**: The workflow checks for a GitHub Actions variable named `BYPASS_LOCAL`.
- **Usage**: To activate this bypass, create a **Repository or Organization Variable** named `BYPASS_LOCAL` and give it any value (e.g., `true`).
- **Effect**: If this variable is present and has a value, the `determine-runner` job will skip the API check for self-hosted runners and immediately select `ubuntu-latest`.

```yaml
# From the determine-runner job
if [ -n "${{ vars.BYPASS_LOCAL }}" ]; then
  echo "vars.BYPASS_LOCAL is set. Skipping runner detection."
  echo "runner-x86=ubuntu-latest" >> $GITHUB_OUTPUT
  exit 0
fi
```

## 3. Dynamic SDK and NDK Versioning

To ensure the Android build environment is always correct, the pipeline dynamically reads the required SDK and NDK versions directly from the project's Gradle configuration file.

- **Source File**: The versions are extracted from `apps/healthy_living/android/app/build.gradle.kts`.
- **Process**: A step named `"Get sdkVersion from build.gradle.kts"` uses `perl` commands to parse the file and find the values for `compileSdk` and `ndkVersion`.
- **Application**: These extracted versions are then passed to the `amyu/setup-android` action, which configures the runner with the exact SDK and NDK required for the build, preventing version mismatch errors.

```yaml
# From the build-validations and android-stage-build jobs
- name: "Get sdkVersion from build.gradle.kts"
  id: read_version
  shell: bash
  run: |
    version=`perl -nlE 'say if s/^\s*compileSdk \= \s*(\d+)/$1/g' apps/healthy_living/android/app/build.gradle.kts`
    echo "sdkVersion=$version" >> $GITHUB_OUTPUT
    echo "Android SDK Version: $version"

    version=`perl -nlE 'say if s/^\s*ndkVersion \= \s*\"([^\"]+)\"/$1/g' apps/healthy_living/android/app/build.gradle.kts`
    echo "ndk-version=$version" >> $GITHUB_OUTPUT
    echo "NDK Version: $version"

- name: Setup Android SDK
  uses: amyu/setup-android@v5
  with:
    sdk-version: ${{ steps.read_version.outputs.sdkVersion }}
    ndk-version: ${{ steps.read_version.outputs.ndk-version }}
```