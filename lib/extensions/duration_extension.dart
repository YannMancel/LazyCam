extension DurationExtension on Duration {
  int get secondsSubtractedWithMinutes => this.inSeconds - this.inMinutes * 60;
}
