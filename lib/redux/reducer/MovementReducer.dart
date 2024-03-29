
import 'package:game2048/redux/action/GameAction.dart';
import 'package:game2048/redux/action/Movement.dart';

import '../state/MovementState.dart';

MovementState movementReducer(MovementState state, dynamic action) {

  switch (action.type) {

    case Move.UP:
      return GameAction().moveToUp(state);

    case Move.RIGHT:
      return GameAction().moveToRight(state);

    case Move.DOWN:
      return GameAction().moveToDown(state);


    case Move.LEFT:
      return GameAction().moveToLeft(state);


    case Move.INIT :
      return GameAction().initGame(state);

    default:
      return state;
  }


}
