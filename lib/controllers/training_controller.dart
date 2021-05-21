import '../extensions/extensions_link.dart';
import '../models/models_link.dart';
import 'controllers_link.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class TrainingController extends BaseController<Training> {
  TrainingController({required Training state}) : super(state: state);

  static const kName = 'TrainingProvider';

  @override
  String get name => TrainingController.kName;

  void replaceCycle({
    required Cycle oldVersion,
    required Cycle newVersion,
  });
  void addCycleAfter({required Cycle cycle});
  void copyCycleAfterItself({required Cycle cycle});
  void remove({required Cycle cycle});
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class TrainingControllerImpl extends TrainingController {
  TrainingControllerImpl() : super(state: Training());

  @override
  void replaceCycle({
    required Cycle oldVersion,
    required Cycle newVersion,
  }) {
    final index = state.cycles.indexWhere((e) => e == oldVersion);

    final items = <Cycle>[...state.cycles].apply(
      actionOnItself: (it) => it[index] = newVersion,
    );

    state = state.copyWith(cycles: items);
  }

  @override
  void addCycleAfter({required Cycle cycle}) {
    final index = state.cycles.indexWhere((e) => e == cycle);

    final items = <Cycle>[...state.cycles].apply(
      actionOnItself: (it) {
        it.insert(index + 1, const Cycle());

        // Update indexes
        it.asMap().forEach(
          (index, value) {
            it[index] = value.copyWith(id: index);
          },
        );
      },
    );

    state = state.copyWith(cycles: items);
  }

  @override
  void copyCycleAfterItself({required Cycle cycle}) {
    final index = state.cycles.indexWhere((e) => e == cycle);

    final items = <Cycle>[...state.cycles].apply(
      actionOnItself: (it) {
        it.insert(index + 1, cycle);

        // Update indexes
        it.asMap().forEach(
          (index, value) {
            it[index] = value.copyWith(id: index);
          },
        );
      },
    );

    state = state.copyWith(cycles: items);
  }

  @override
  void remove({required Cycle cycle}) {
    // TODO Snackbar
    if (state.cycles.length == 1) return;

    final items = <Cycle>[...state.cycles].apply(
      actionOnItself: (it) {
        it.remove(cycle);

        // Update index
        it.asMap().forEach(
          (index, value) {
            it[index] = value.copyWith(id: index);
          },
        );
      },
    );

    state = state.copyWith(cycles: items);
  }
}
