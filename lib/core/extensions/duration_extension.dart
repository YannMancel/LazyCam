extension DurationExtension on Duration {
  int get secondsSubtractedWithMinutes {
    return inSeconds - (inMinutes * Duration.secondsPerMinute);
  }

  String get minutesAndSecondsFormatWithoutUnits {
    final seconds = secondsSubtractedWithMinutes.toString().padLeft(2, '0');

    final minutes = (inMinutes < 10)
        ? inMinutes.toString().padLeft(2, '0')
        : inMinutes.toString();

    return '$minutes : $seconds';
  }

  String get minutesAndSecondsFormat {
    return '$inMinutes min $secondsSubtractedWithMinutes s';
  }

  double get inSecondsInDouble => inSeconds.toDouble();
}
