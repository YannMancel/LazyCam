import 'package:flutter_ffmpeg/flutter_ffmpeg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoController extends StateNotifier<String> {
  VideoController({
    FlutterFFmpeg? ffmpeg,
  })  : _ffmpeg = ffmpeg ?? FlutterFFmpeg(),
        super('');

  final FlutterFFmpeg _ffmpeg;

  void startVideo() {
    state = 'Started';

/*
    _flutterFFmpeg.execute("-i file1.mp4 -c:v mpeg4 file2.mp4").then((rc) => print("FFmpeg process exited with rc $rc"));

    var arguments = ["-i", "file1.mp4", "-c:v", "mpeg4", "file2.mp4"];
    _flutterFFmpeg.executeWithArguments(arguments).then((rc) => print("FFmpeg process exited with rc $rc"));

    _flutterFFmpeg.executeAsync(ffmpegCommand, (int executionId, int returnCode) {
      print("FFmpeg process for executionId $executionId exited with rc $returnCode");
    }).then((executionId) => print("Async FFmpeg process started with executionId $executionId."));

    final FlutterFFprobe _flutterFFprobe = new FlutterFFprobe();
    _flutterFFprobe.execute("-i file1.mp4").then((rc) => print("FFprobe process exited with rc $rc"));

    final FlutterFFprobe _flutterFFprobe = new FlutterFFprobe();
    var arguments = ["-i", "file1.mp4"];
    _flutterFFprobe.executeWithArguments(arguments).then((rc) => print("FFprobe process exited with rc $rc"));



    final FlutterFFmpegConfig _flutterFFmpegConfig = new FlutterFFmpegConfig();
    _flutterFFmpegConfig.getLastReturnCode().then((rc) => print("Last rc: $rc"));
    _flutterFFmpegConfig.getLastCommandOutput().then((output) => print("Last command output: $output"));

    _flutterFFmpeg.cancel();

    _flutterFFmpeg.cancelExecution(executionId);

    final FlutterFFprobe _flutterFFprobe = new FlutterFFprobe();
    _flutterFFprobe.getMediaInformation("<file path or uri>").then((info) => print(info));
*/
  }
}
