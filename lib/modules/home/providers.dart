import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateNotifierProvider;

import 'home.dart';

final menuProvider = StateNotifierProvider<MenuController, MenuState>(
  (_) => MenuControllerImpl(),
  name: MenuController.kName,
);
