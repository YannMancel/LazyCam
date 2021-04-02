import 'package:flutter_riverpod/flutter_riverpod.dart';

class VideoController extends StateNotifier<String> {
  VideoController() : super('');

  void startVideo() {
    print('VIDEO');
  }
}
