import 'package:flutter/material.dart';
import 'package:marcadordomino/android/components/potuation.dart';
import 'package:marcadordomino/android/components/score.dart';
import 'package:marcadordomino/android/models/game.dart';
import 'package:marcadordomino/android/models/player.dart';
import '../components/player_info.dart';

class Domino extends StatefulWidget {
  @override
  _DominoState createState() => _DominoState();
}

class _DominoState extends State<Domino> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          PlayerInfo(),
          Pontuation(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Divider(
                  height: 10,
                  thickness: 4,
                  color: Colors.white,
                ),
              ],
            )
          ),
          Score()
        ],
      ),
    );
  }
}