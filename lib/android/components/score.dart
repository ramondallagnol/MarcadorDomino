import 'package:flutter/material.dart';
import 'package:marcadordomino/android/components/button_score.dart';
import 'package:marcadordomino/android/components/text_auto_size.dart';
import 'package:marcadordomino/android/models/game.dart';

class Score extends StatefulWidget {
  final Game game;
  Score(this.game);
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              TextAutoSize(widget.game.player1.getTotalScore().toString(), 30, 100),
              ButtonScore(widget.game.player1),
            ],
          ),
          Column(
            children: <Widget>[
              TextAutoSize(widget.game.player2.getTotalScore().toString(), 30, 100),
              ButtonScore(widget.game.player2),
            ],
          )
        ],
      ),
    );
  }
}
