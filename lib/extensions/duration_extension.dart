extension DurationExtension on Duration {
  int get secondsSubtractedWithMinutes {
    return this.inSeconds - (this.inMinutes * Duration.secondsPerMinute);
  }

  String get minutesAndSecondsFormatWithoutUnits {
    return '${this.inMinutes}:${this.secondsSubtractedWithMinutes}';
  }

  String get minutesAndSecondsFormat {
    return '${this.inMinutes} min ${this.secondsSubtractedWithMinutes} s';
  }
}
