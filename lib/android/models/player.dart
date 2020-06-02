import 'package:mobx/mobx.dart';
part 'player.g.dart';

class Player = _Player with _$Player;

abstract class _Player with Store {

  @observable
  ObservableList<int> scores = ObservableList<int>();

  @observable
  String name;

  @observable
  int victory = 0;

  _Player(name) {
    this.name = name;
  }

  @action
  addScore(int score) {
    scores.add(score);
  }

  @computed get getTotalScore {
    var total = 0;
    scores.forEach((score) {
      total += score;
    });
    return total;
  }

  @action
  isWins(gameScore) {
    return getTotalScore() >= gameScore;
  }

}