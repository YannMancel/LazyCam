abstract class Logger {
  static const _kColor = {
    'black': '\x1B[30m',
    'red': '\x1B[31m',
    'green': '\x1B[32m',
    'yellow': '\x1B[33m',
    'blue': '\x1B[34m',
    'magenta': '\x1B[35m',
    'cyan': '\x1B[36m',
    'white': '\x1B[37m',
    'reset': '\x1B[0m',
  };

  static void debug({required String message}) {
    print('${_kColor['green']}$message${_kColor['reset']}');
  }

  static void info({required String message}) {
    print('${_kColor['cyan']}$message${_kColor['reset']}');
  }

  static void warning({required String message}) {
    print('${_kColor['yellow']}$message${_kColor['reset']}');
  }

  static void error({required String message}) {
    print('${_kColor['red']}$message${_kColor['reset']}');
  }

  static void wtf({required String message}) {
    print('${_kColor['magenta']}$message${_kColor['reset']}');
  }
}
