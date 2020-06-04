import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marcadordomino/android/app/app_controller.dart';
import 'package:marcadordomino/android/components/text_auto_size.dart';
//import 'package:marcadordomino/android/stores/game_controller.dart';
import 'package:provider/provider.dart';

class PlayerInfo extends StatefulWidget {
  @override
  _PlayerInfoState createState() => _PlayerInfoState();
}

class _PlayerInfoState extends State<PlayerInfo> {

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<AppController>();

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
                Observer(
                  builder: (_) => TextAutoSize(
                    '${controller.game.player1.name}', 25, 80,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                  Observer(
                    builder: (_) => TextAutoSize(
                      '${controller.game.player2.name}', 25, 80,
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}