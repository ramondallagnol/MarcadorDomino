import 'package:flutter/material.dart';
import 'package:marcadordomino/android/components/potuation.dart';
import 'package:marcadordomino/android/components/score.dart';
import 'package:marcadordomino/android/models/game.dart';
import '../components/player_info.dart';

class Domino extends StatefulWidget {
  final Game game;
  Domino(this.game);
  @override
  _DominoState createState() => _DominoState();
}

class _DominoState extends State<Domino> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          PlayerInfo(widget.game.player1, widget.game),
          Pontuation(widget.game.player1),
          Score(widget.game)
        ],
      ),
    );
  }
}