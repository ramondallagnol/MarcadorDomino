import 'package:marcadordomino/android/models/game.dart';
import 'package:marcadordomino/android/models/player.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppController with _$AppController;

abstract class _AppController with Store {
  @observable
  Game game = Game(
      player1: Player(''),
      player2: Player(''),
      scoreGame: 100
  );
}
