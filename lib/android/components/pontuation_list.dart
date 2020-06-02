import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:marcadordomino/android/models/player.dart';
import 'package:marcadordomino/android/stores/game_controller.dart';
import 'package:provider/provider.dart';

class PontuationList extends StatefulWidget {
  final Player player;
  PontuationList({this.player});
  @override
  _PontuationListState createState() => _PontuationListState();
}

class _PontuationListState extends State<PontuationList> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView.builder(
          itemCount: widget.player.scores.length,
          itemBuilder: (context, index) {
            return Container(
              height: 45,
              child: Center(
                child: Text(
                  widget.player.scores[index].toString(),
                  style: TextStyle(
                      fontSize: 35
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}

