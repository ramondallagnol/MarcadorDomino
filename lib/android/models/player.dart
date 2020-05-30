class Player {
  List<int> scores;
  String name;
  int victory = 0;
  Player(name) {
    this.name = name;
    this.scores = new List();
  }

  addScore(int score) {
    scores.add(score);
  }

  getTotalScore() {
    var total = 0;
    scores.forEach((score) {
      total += score;
    });
    return total;
  }

  isWins(gameScore) {
    return getTotalScore() >= gameScore;
  }

}