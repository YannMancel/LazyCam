import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controllers/video_controller.dart';

final videoControllerProvider = StateNotifierProvider((_) => VideoController());
