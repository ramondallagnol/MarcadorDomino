import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marcadordomino/android/app/app_controller.dart';

class Pontuation extends StatefulWidget {
  @override
  _PontuationState createState() => _PontuationState();
}

class _PontuationState extends State<Pontuation> {

  final controller = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: Container(
            child: Flexible(
              child: Container(
                child: Observer(
                  builder: (_) {
                    return ListView.builder(
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
  }
}