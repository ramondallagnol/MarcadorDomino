import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcadordomino/android/components/pontuation_list.dart';
import 'package:marcadordomino/android/models/game.dart';
import 'package:marcadordomino/android/models/player.dart';
import 'package:marcadordomino/android/stores/game_controller.dart';
import 'package:provider/provider.dart';

class Pontuation extends StatefulWidget {
  @override
  _PontuationState createState() => _PontuationState();
}

class _PontuationState extends State<Pontuation> {
  @override
  Widget build(BuildContext context) {
  final controller = Provider.of<GameController>(context);
  return Row(
    children: <Widget>[
      Container(
        child: Container(
          child: Flexible(
            child: Container(
              child: Observer(
                builder: (_) {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.game.player1.scores.length,
                    itemBuilder: (context, index) {
                      return Center(
                        child: Text(
                            controller.game.player1.scores[index].toString(),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
      Flexible(
        child: Container(
          child: Observer(
            builder: (_) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: controller.game.player2.scores.length,
                itemBuilder: (context, index) {
                  return Center(
                    child: Text(
                      controller.game.player2.scores[index].toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    ],
  );
//    return Container(
//          child: Column(
//            children: <Widget>[
//              Observer(
//                builder: (_) {
//                  return ListView.builder(
//                    shrinkWrap: true,
//                    itemCount: controller.game.player1.scores.length,
//                    itemBuilder: (context, index) {
//                      return Text(controller.game.player1.scores[index].toString());
//                    },
//                  );
//                },
//              ),
//              Observer(
//                builder: (_) {
//                  return ListView.builder(
//                    shrinkWrap: true,
//                    itemCount: controller.game.player2.scores.length,
//                    itemBuilder: (context, index) {
//                      return Text(controller.game.player2.scores[index].toString());
//                    },
//                  );
//                },
//              ),
//            ],
//          ),
//    );
  }
}