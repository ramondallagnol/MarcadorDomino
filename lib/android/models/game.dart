import 'package:marcadordomino/android/models/player.dart';

class Game {
  DateTime startDate;
  Player player1;
  Player player2;
  int scoreGame;

  Game(player1, player2, scoreGame) {
    this.player1 = player1;
    this.player2 = player2;
    this.startDate = DateTime.now();
    this.scoreGame = scoreGame;
  }

  refreshGame() {
    this.player1.scores.clear();
    this.player2.scores.clear();
  }

}