abstract class Logger {
  /*
    Color:
      Black:   \x1B[30m
      Red:     \x1B[31m
      Green:   \x1B[32m
      Yellow:  \x1B[33m
      Blue:    \x1B[34m
      Magenta: \x1B[35m
      Cyan:    \x1B[36m
      White:   \x1B[37m
      Reset:   \x1B[0m
   */

  /// Debug Log in Green
  static void debug({required String message}) {
    print('\x1B[32m$message\x1B[0m');
  }

  /// Info Log in Blue
  static void info({required String message}) {
    print('\x1B[34m$message\x1B[0m');
  }

  /// Warning Log in Yellow
  static void warning({required String message}) {
    print('\x1B[33m$message\x1B[0m');
  }

  /// Error Log in Red
  static void error({required String message}) {
    print('\x1B[31m$message\x1B[0m');
  }

  /// WTF Log in Magenta
  static void wtf({required String message}) {
    print('\x1B[35m$message\x1B[0m');
  }
}
