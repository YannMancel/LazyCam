extension DurationExtension on Duration {
  int get secondsSubtractedWithMinutes {
    return this.inSeconds - (this.inMinutes * Duration.secondsPerMinute);
  }

  String get minutesAndSecondsFormatWithoutUnits {
    final seconds =
        this.secondsSubtractedWithMinutes.toString().padLeft(2, '0');

    final minutes = (this.inMinutes < 10)
        ? this.inMinutes.toString().padLeft(2, '0')
        : this.inMinutes.toString();

    return '$minutes : $seconds';
  }

  String get minutesAndSecondsFormat {
    return '${this.inMinutes} min ${this.secondsSubtractedWithMinutes} s';
  }

  double get inSecondsInDouble => this.inSeconds.toDouble();
}
