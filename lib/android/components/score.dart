import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcadordomino/android/components/button_score.dart';
import 'package:marcadordomino/android/components/text_auto_size.dart';
import 'package:marcadordomino/android/models/game.dart';
import 'package:marcadordomino/android/stores/game_controller.dart';
import 'package:provider/provider.dart';

class Score extends StatefulWidget {
  @override
  _ScoreState createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<GameController>(context);
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Observer(
                builder: (_) => TextAutoSize('${controller.game.player1.getTotalScore.toString()}', 40, 80,),
              ),
              Observer(
                builder: (_) => ButtonScore(controller.game.player1),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Observer(
                builder: (_) => TextAutoSize('${controller.game.player2.getTotalScore.toString()}', 40, 80,),
              ),
              Observer(
                builder: (_) => ButtonScore(controller.game.player2),
              )
            ],
          )
        ],
      ),
    );
  }
}
