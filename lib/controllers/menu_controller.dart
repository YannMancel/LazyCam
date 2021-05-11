import '../models/models_link.dart';
import 'base_controller.dart';

abstract class MenuController extends BaseController<MenuState> {
  MenuController({required MenuState state}) : super(state);

  static const kName = 'MenuProvider';

  @override
  String get name => MenuController.kName;

  void reverseState();
}

class MenuControllerImpl extends MenuController {
  MenuControllerImpl() : super(state: const MenuState.close());

  @override
  void reverseState() {
    state.when(
      open: () => state = const MenuState.close(),
      close: () => state = const MenuState.open(),
    );
  }
}
