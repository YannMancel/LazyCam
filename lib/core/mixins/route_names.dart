///
/// Summary:
///  [/]
///   |
///   + --> [training_settings]
///   |     |
///   |     + --> [/][training]
///   |
///   + --> [camera]
///   |
///   + --> [timer_selector]
///
mixin RouteNames {
  // [LEVEL 0]
  static const kHomeRoute = '/';

  // [LEVEL 1]
  static const kTrainingSettingsRoute = '${kHomeRoute}training_settings';
  static const kCameraRoute = '${kHomeRoute}camera';
  static const kStreamRoute = '${kHomeRoute}stream';

  // [LEVEL 2]
  static const kTrainingRoute = '$kTrainingSettingsRoute/training';
}
