import '../../../_features.dart';

// -----------------------------------------------------------------------------
// Abstract class
// -----------------------------------------------------------------------------
abstract class TrainingManagerLogic extends BaseController<Cycle> {
  TrainingManagerLogic({required Cycle state}) : super(state: state);

  static const kName = 'TrainingManagerLogic';

  @override
  String get name => TrainingManagerLogic.kName;
}

// -----------------------------------------------------------------------------
// Implementation
// -----------------------------------------------------------------------------
class TrainingManagerLogicImpl extends TrainingManagerLogic {
  TrainingManagerLogicImpl({
    required Training training,
  })   : _training = training,
        super(
          state: training.cycles.isNotEmpty
              ? training.cycles.first
              : const Cycle(),
        );

  final Training _training;

  // TODO Logic
  //  - When time stopped,
  //      1- will know if is user's action or end of timer
  //      2- When time stopped, will know if we must repeat yet
  //          yes -> repeat
  //          no  -> change of cycle
  //  savoir le nombre de repeat restant
  //

}
