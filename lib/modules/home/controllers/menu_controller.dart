import '../../../core/core.dart';
import '../home.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class MenuController extends BaseController<MenuState> {
  MenuController({required MenuState state}) : super(state: state);

  static const kName = 'MenuProvider';

  @override
  String get name => MenuController.kName;

  void reverseState();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
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
