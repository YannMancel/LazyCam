import '../../../_features.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class MenuLogic extends BaseController<MenuState> {
  MenuLogic({required MenuState state}) : super(state: state);

  static const kName = 'MenuLogic';

  @override
  String get name => MenuLogic.kName;

  void reverseState();
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class MenuLogicImpl extends MenuLogic {
  MenuLogicImpl() : super(state: const MenuState.close());

  @override
  void reverseState() {
    state.when(
      open: () => state = const MenuState.close(),
      close: () => state = const MenuState.open(),
    );
  }
}
