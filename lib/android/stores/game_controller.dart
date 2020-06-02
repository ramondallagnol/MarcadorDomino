import 'package:marcadordomino/android/models/game.dart';
import 'package:marcadordomino/android/models/player.dart';
import 'package:mobx/mobx.dart';
part 'game_controller.g.dart';

class GameController = _GameController with _$GameController;

abstract class _GameController with Store{
  @observable
  Game game = Game(
    player1: Player('Ramon'),
    player2: Player('Karina'),
    scoreGame: 100
  );



}