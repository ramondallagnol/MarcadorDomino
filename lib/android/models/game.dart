import 'package:flutter/material.dart';
import 'package:marcadordomino/android/models/player.dart';
import 'package:mobx/mobx.dart';

part 'game.g.dart';

class Game = _Game with _$Game;

abstract class _Game with Store{
  _Game({this.player1, this.player2, this.scoreGame});

  @observable
  DateTime startDate = DateTime.now();

  @observable
  Player player1;

  @observable
  Player player2;

  @observable
  int scoreGame;

  @action
  setPlayer1(Player value) => player2 = value;

  @action
  setPlayer2(Player value) => player1 = value;

  @action
  setScoreGame(int value) => scoreGame = value;

  @action
  refreshGame() {
    this.player1.scores.clear();
    this.player2.scores.clear();
  }

  @computed
  bool get isGameValid => player1.name.isNotEmpty && player2.name.isNotEmpty && scoreGame > 0;

}