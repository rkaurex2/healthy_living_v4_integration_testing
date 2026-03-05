# EWG's Healthy Living app

- Please follow the given instructions for setting up the development environment and assembling builds.

## Pre-requisites

- Make sure that Flutter SDK, Dart SDK, Java, XCode, Cocoapods and Android Studio are installed on
  the Mac OS machine.
- Make sure that the path of Flutter SDK’s `/bin` is set on the global path so that “flutter”
  commands could run in the terminal.
- Run the `flutter doctor` command in the terminal window. Make sure that this command displays no
  error.

## Install Melos CLI tool

- `dart pub global activate melos`
- `melos export PATH="$PATH":"$HOME/.pub-cache/bin"`

## Download the source code

- Download the source code repository code of Main branch, or clone using Git and checkout to the
  Main branch.
- Repository link
  is [https://github.com/ewg/healthy_living_v4](https://github.com/ewg/healthy_living_v4)

## Adding the *.env files in source code

- Download the `*.env` files for Healthy Living app.
- Move the app's `*.env` files at the path `apps/healthy_living/assets/env`.

## Set up the project

- Go to the root folder of project in the terminal.
- Run these commands in sequence:
  - `melos bs`

## Assemble and publish Healthy Living app’s Android build

### Assemble Healthy Living app’s Android build:

1. From repository’s root folder, open the `prod_keystore.properties` file at path `/apps/healthy_living/android/`
2. Add the PROD build signing keystore\'s details for all the keys and replace the storeFile named
   key’s value with the path to the PROD Keystore file in this file.
3. Go to path in the terminal `/apps/healthy_living/`
4. Execute the below command in terminal to assemble PROD build:

   `flutter build appbundle --release --flavor prod -t lib/healthy_living/main.dart --dart-define=ENVIRONMENT=prod`

### Publish Healthy Living app’s Android build on Internal Testing:

- After the assembling the build, a new `*.aab` file gets created and the path to that file gets printed on
  the terminal.
- Go to that path using the Finder and upload the generated `*.aab` file on “EWG's Healthy Living” app’s Play
  Store account under “Internal Testing”.

## Assemble and publish Healthy Living app’s iOS build

### Assemble Healthy Living app’s iOS build:

- Go to path in the terminal `/apps/healthy_living/ios/`

- Execute the below command in the terminal `pod install`.
- Now, open the iOS workspace in XCode and select prod as the target.
- Create the archive.

### Publish Healthy Living app’s iOS build:

- Upload the newly created archive file for testing on TestFlight of “EWG's Healthy Living” app.
