package com.mancel.yann.LazyCam;

import androidx.test.rule.ActivityTestRule;
import dev.flutter.plugins.integration_test.FlutterTestRunner;
import org.junit.Rule;
import org.junit.runner.RunWith;

/*

  STEP 0: Create folders (at the flutter project's root) and dart file:

    [A] = integration_test ...................................... Folder
    [B] = [A]/app_test.dart ..................................... Dart file

  STEP 1: To avoid "Execution failed for task ':app:dexBuilderDebug", run theses commands before:

    flutter clean
    flutter pub get

  STEP 2: In terminal

    ./gradlew app:connectedAndroidTest -Ptarget=`pwd`/../[A]/[B]

 */

@RunWith(FlutterTestRunner.class)
public class MainActivityTest {
    @Rule
    public ActivityTestRule<MainActivity> rule = new ActivityTestRule<>(MainActivity.class, true, false);
}