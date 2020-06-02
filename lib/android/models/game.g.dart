// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Game on _Game, Store {
  final _$startDateAtom = Atom(name: '_Game.startDate');

  @override
  DateTime get startDate {
    _$startDateAtom.reportRead();
    return super.startDate;
  }

  @override
  set startDate(DateTime value) {
    _$startDateAtom.reportWrite(value, super.startDate, () {
      super.startDate = value;
    });
  }

  final _$player1Atom = Atom(name: '_Game.player1');

  @override
  Player get player1 {
    _$player1Atom.reportRead();
    return super.player1;
  }

  @override
  set player1(Player value) {
    _$player1Atom.reportWrite(value, super.player1, () {
      super.player1 = value;
    });
  }

  final _$player2Atom = Atom(name: '_Game.player2');

  @override
  Player get player2 {
    _$player2Atom.reportRead();
    return super.player2;
  }

  @override
  set player2(Player value) {
    _$player2Atom.reportWrite(value, super.player2, () {
      super.player2 = value;
    });
  }

  final _$scoreGameAtom = Atom(name: '_Game.scoreGame');

  @override
  int get scoreGame {
    _$scoreGameAtom.reportRead();
    return super.scoreGame;
  }

  @override
  set scoreGame(int value) {
    _$scoreGameAtom.reportWrite(value, super.scoreGame, () {
      super.scoreGame = value;
    });
  }

  final _$_GameActionController = ActionController(name: '_Game');

  @override
  dynamic setPlayer1(Player value) {
    final _$actionInfo =
        _$_GameActionController.startAction(name: '_Game.setPlayer1');
    try {
      return super.setPlayer1(value);
    } finally {
      _$_GameActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPlayer2(Player value) {
    final _$actionInfo =
        _$_GameActionController.startAction(name: '_Game.setPlayer2');
    try {
      return super.setPlayer2(value);
    } finally {
      _$_GameActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic refreshGame() {
    final _$actionInfo =
        _$_GameActionController.startAction(name: '_Game.refreshGame');
    try {
      return super.refreshGame();
    } finally {
      _$_GameActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
startDate: ${startDate},
player1: ${player1},
player2: ${player2},
scoreGame: ${scoreGame}
    ''';
  }
}
