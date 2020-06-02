// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Player on _Player, Store {
  Computed<dynamic> _$getTotalScoreComputed;

  @override
  dynamic get getTotalScore =>
      (_$getTotalScoreComputed ??= Computed<dynamic>(() => super.getTotalScore,
              name: '_Player.getTotalScore'))
          .value;

  final _$scoresAtom = Atom(name: '_Player.scores');

  @override
  ObservableList<int> get scores {
    _$scoresAtom.reportRead();
    return super.scores;
  }

  @override
  set scores(ObservableList<int> value) {
    _$scoresAtom.reportWrite(value, super.scores, () {
      super.scores = value;
    });
  }

  final _$nameAtom = Atom(name: '_Player.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$victoryAtom = Atom(name: '_Player.victory');

  @override
  int get victory {
    _$victoryAtom.reportRead();
    return super.victory;
  }

  @override
  set victory(int value) {
    _$victoryAtom.reportWrite(value, super.victory, () {
      super.victory = value;
    });
  }

  final _$_PlayerActionController = ActionController(name: '_Player');

  @override
  dynamic addScore(int score) {
    final _$actionInfo =
        _$_PlayerActionController.startAction(name: '_Player.addScore');
    try {
      return super.addScore(score);
    } finally {
      _$_PlayerActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic isWins(dynamic gameScore) {
    final _$actionInfo =
        _$_PlayerActionController.startAction(name: '_Player.isWins');
    try {
      return super.isWins(gameScore);
    } finally {
      _$_PlayerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
scores: ${scores},
name: ${name},
victory: ${victory},
getTotalScore: ${getTotalScore}
    ''';
  }
}
