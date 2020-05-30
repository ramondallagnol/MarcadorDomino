import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marcadordomino/android/components/text_auto_size.dart';
import 'package:marcadordomino/android/models/game.dart';
import 'package:marcadordomino/android/models/player.dart';

class PlayerInfo extends StatefulWidget {
  final Player player;
  final Game game;
  PlayerInfo(this.player, this.game);

  @override
  _PlayerInfoState createState() => _PlayerInfoState();
}

class _PlayerInfoState extends State<PlayerInfo> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextAutoSize(widget.game.player1.name, 20, 80),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextAutoSize(widget.game.player2.name, 20, 80)
              ],
            )
          ],
        ),
      ),
    );
  }

//  @override
//  Widget build(BuildContext context) {
//    return Expanded(
//      flex: 2,
//      child: Container(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.start,
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Row(
//                children: <Widget>[
//                  Column(
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: AutoSizeText(
//                          widget.player.name,
//                          minFontSize: 20,
//                          maxFontSize: 80,
//                          maxLines: 1,
//                          textAlign: TextAlign.center,
//                          style: TextStyle(
//                            fontWeight: FontWeight.w700,
//                            decoration: TextDecoration.none,
//                          ),
//                        ),
//                      ),
//                    ],
//                  ),
//                  Column(
//                    children: <Widget>[
//                      Container(
//                        height: 42,
//                        child: FloatingActionButton(
//                          child: Icon(Icons.add),
//                          onPressed: _scoreDialog,
//                          foregroundColor: Colors.white,
//                          backgroundColor: Colors.blue,
//                        ),
//                      ),
//                    ],
//                  )
//                ],
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: Pontuation(widget.player),
//            ),
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: const Divider(
//                height: 10,
//                thickness: 4,
//                color: Colors.white,
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.all(2.0),
//              child: AutoSizeText(
//                widget.player.getTotalScore().toString(),
//                minFontSize: 35,
//                maxFontSize: 80,
//                maxLines: 1,
//                textAlign: TextAlign.center,
//                style: TextStyle(
//                    fontWeight: FontWeight.w700,
//                    decoration: TextDecoration.none,
//                ),
//              ),
//            )
//          ]
//        ),
//      ),
//    );
//  }
}