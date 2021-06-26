import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'home.dart';

final menuProvider = StateNotifierProvider<MenuLogic, MenuState>(
  (_) => MenuLogicImpl(),
  name: MenuLogic.kName,
);
