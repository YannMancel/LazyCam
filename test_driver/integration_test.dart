// @dart=2.8
import 'package:integration_test/integration_test_driver.dart';

/*

  WARNING: Use JDK-15 for Java (error wit JDK-16)

  STEP 0: Create folders (at the project's root) and dart file:

    [A] = test_driver ........................................... Folder
    [B] = [A]/integration_test.dart ............................. Dart file
    [C] = integration_test ...................................... Folder
    [D] = [C]/app_test.dart ..................................... Dart file

  STEP 1: To run tests on virtual or real device:

    flutter drive --driver=[A]/[B] --target=[C]/[D]

  STEP 2: In terminal

    # FCI_BUILD_DIR is a predefined environment variable pointing
    # to the root of the Flutter project
    cd $FCI_BUILD_DIR

    # Go to the android folder which contains the "gradlew" script used
    # for building Android apps from the terminal
    pushd android

    # flutter build generates files in android/ for building the app (release)
    flutter build apk

    # Build an Android test APK
    # (that's why we've created the MainActivityTest.java)
    ./gradlew app:assembleAndroidTest

    # Build a debug APK, passing in the integration test file
    ./gradlew app:assembleDebug -Ptarget="$FCI_BUILD_DIR/[C]/[D]"

    # Go back to the root of the project
    popd

 */

Future<void> main() => integrationDriver();
