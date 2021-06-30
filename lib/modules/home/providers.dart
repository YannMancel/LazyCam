import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import '../../_features.dart';

final menuProvider = StateNotifierProvider<MenuLogic, MenuState>(
  (_) => MenuLogicImpl(),
  name: MenuLogic.kName,
);
