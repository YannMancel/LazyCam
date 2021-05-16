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

  void addCycle();
  void copyLastCycle();
  void updateTempoOfCycle({
    required Cycle cycle,
    required int tempo,
  });
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class TrainingControllerImpl extends TrainingController {
  TrainingControllerImpl() : super(state: Training());

  @override
  void addCycle() {
    state = state.copyWith(
      cycles: <Cycle>[
        ...state.cycles,
        Cycle(id: state.cycles.length),
      ],
    );
  }

  @override
  void copyLastCycle() {
    state = state.copyWith(
      cycles: <Cycle>[
        ...state.cycles,
        state.cycles.last.copyWith(id: state.cycles.length),
      ],
    );
  }

  @override
  void updateTempoOfCycle({
    required Cycle cycle,
    required int tempo,
  }) {
    state = state.copyWith(
      cycles: state.cycles
          .map((e) => (e == cycle) ? cycle.copyWith(tempo: tempo) : e)
          .toList(growable: false),
    );
  }
}
