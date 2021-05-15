///
/// Summary:
///  [/]
///   |
///   + --> [timer_selector]
///   |     |
///   |     + --> [/][timer]
///   |
///   + --> [camera]
///   |
///   + --> [timer_selector]
///
mixin RouteNames {
  // [LEVEL 0]
  static const kHomeRoute = '/';
  // [LEVEL 1]
  static const kTimeSelectorRoute = '${kHomeRoute}timer_selector';
  static const kCameraRoute = '${kHomeRoute}camera';
  static const kStreamRoute = '${kHomeRoute}stream';
  // [LEVEL 2]
  static const kTimerRoute = '$kTimeSelectorRoute/timer';
}
