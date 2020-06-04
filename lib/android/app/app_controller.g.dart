// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppController, Store {
  final _$gameAtom = Atom(name: '_AppController.game');

  @override
  Game get game {
    _$gameAtom.reportRead();
    return super.game;
  }

  @override
  set game(Game value) {
    _$gameAtom.reportWrite(value, super.game, () {
      super.game = value;
    });
  }

  @override
  String toString() {
    return '''
game: ${game}
    ''';
  }
}
