import java.util.Properties
import java.io.FileInputStream

plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    id("com.google.firebase.crashlytics")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val nonProdKeystoreProperties = Properties().apply {
    val file = rootProject.file("non_prod_keystore.properties")
    if (file.exists()) {
        load(FileInputStream(file))
    }
}

val prodKeystoreProperties = Properties().apply {
    val file = rootProject.file("prod_keystore.properties")
    if (file.exists()) {
        load(FileInputStream(file))
    }
}

android {
    namespace = "com.skindeep.mobile"
    compileSdk = 35
    ndkVersion = "27.2.12479018"

    compileOptions {
        isCoreLibraryDesugaringEnabled = true
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    sourceSets["main"].java.srcDirs("src/main/kotlin")

    dexOptions {
        javaMaxHeapSize = "4G"
    }

    defaultConfig {
      applicationId = "com.example.ewg_app"
      minSdk = 30
      targetSdk = 35
      versionCode = flutter.versionCode
      versionName = flutter.versionName
    }

    signingConfigs {
        create("non_prod") {
            storeFile = file(nonProdKeystoreProperties["storeFile"] as String)
            keyAlias = nonProdKeystoreProperties["keyAlias"] as String
            keyPassword = nonProdKeystoreProperties["keyPassword"] as String
            storePassword = nonProdKeystoreProperties["storePassword"] as String
        }
        create("prod") {
            storeFile = file(prodKeystoreProperties["storeFile"] as String)
            keyAlias = prodKeystoreProperties["keyAlias"] as String
            keyPassword = prodKeystoreProperties["keyPassword"] as String
            storePassword = prodKeystoreProperties["storePassword"] as String
        }
    }

    flavorDimensions += "app"
    productFlavors {
        create("dev") {
            dimension = "app"
            applicationId = "com.healthyliving.mobile.dev"
            signingConfig = signingConfigs.getByName("non_prod")
        }
        create("stage") {
            dimension = "app"
            applicationId = "com.healthyliving.mobile.stage"
            signingConfig = signingConfigs.getByName("non_prod")
        }
        create("prod") {
            dimension = "app"
            applicationId = "com.skindeep.mobile"
            signingConfig = signingConfigs.getByName("prod")
        }
    }

    buildTypes {
        getByName("debug") {
            isDebuggable = true
            isMinifyEnabled = true
            isShrinkResources = false
            signingConfig = signingConfigs.getByName("non_prod")

            ndk {
                abiFilters += listOf("armeabi-v7a", "arm64-v8a", "x86_64")
            }
        }
        getByName("release") {
            isDebuggable = false
            isMinifyEnabled = true
            isShrinkResources = false

            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard.txt"
            )

            ndk {
                abiFilters += listOf("armeabi-v7a", "arm64-v8a", "x86_64")
            }
        }
    }
}

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
    implementation("androidx.window:window:1.0.0")
    implementation("androidx.window:window-java:1.0.0")
}


flutter {
    source = "../.."
}
