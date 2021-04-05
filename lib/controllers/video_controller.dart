part of 'controllers_link.dart';

class VideoController extends StateNotifier<String> {
  VideoController({
    FlutterFFmpeg? ffmpeg,
  })  : _ffmpeg = ffmpeg ?? FlutterFFmpeg(),
        super('') {
    _setupStorage();
  }

  final FlutterFFmpeg _ffmpeg;
  String? _temporaryDirectoryPath;
  static const _kSubFolderName = 'video';
  static const _kCodec = 'mpeg4';
  static const _kExtension = 'mp4';

  Future<void>_setupStorage() async {
    _temporaryDirectoryPath = await _getTemporaryDirectoryPath(subFolderName: _kSubFolderName,);
  }

  Future<String> _getTemporaryDirectoryPath({String? subFolderName}) async {
    //
    // /data/user/0/com.example.ffmpeg_demo/cache/[subFolderName]
    //
    final directory = await getTemporaryDirectory();
    return (subFolderName != null) ? '$directory/$subFolderName' : '$directory';
  }

  void _deleteDirectory({required String path}) async {
    Directory(path).deleteSync(recursive: true);
  }

  List<dynamic>? _generateEncodeVideoScript({
    required String storagePath,
    required String fileName,
    required String videoCodec,
  }) {
    return <dynamic>[
      '-hide_banner',                 // Suppress printing banner
      '-y',                           // Overwrite output files without asking
      '-i',                           // input: insert
      "'$storagePath/image_%d.jpg'",  // input: url
      '-c:v',                         // Stream specifier: codec
      '$videoCodec',                  // codec
      '-r',                           // Stream specifier: fps
      '24',                           // fps
      "'$storagePath/$fileName'"      // output
    ];
  }

  Future<void> startVideo() async {
    state = 'Started';

    if (_temporaryDirectoryPath == null) return;

    final arguments = _generateEncodeVideoScript(
        storagePath: _temporaryDirectoryPath!,
        fileName: '${DateTime.now().millisecondsSinceEpoch}.$_kExtension',
        videoCodec: _kCodec
    );

    _ffmpeg.executeWithArguments(arguments).then((rc) {
      print('FFmpeg process exited with rc $rc');

      switch (rc) {
        case 0: {
          print('[rc = 0] => Successful execution');
          break;
        }

        case 255: {
          print('[rc = 255] => User cancel');
          break;
        }

        default:
          print('[rc = 255] => Failure');
      }
    });
  }

  @override
  void dispose() {
    _deleteDirectory(path: _temporaryDirectoryPath!);
    super.dispose();
  }
}
