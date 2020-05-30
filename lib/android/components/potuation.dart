import 'package:flutter/material.dart';
import 'package:marcadordomino/android/models/player.dart';

class Pontuation extends StatefulWidget {
  final Player player;
  Pontuation(this.player);
  @override
  _PontuationState createState() => _PontuationState();
}

class _PontuationState extends State<Pontuation> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
          child: SizedBox(
            child: ListView.builder(
              padding: const EdgeInsets.all(3),
              itemCount: widget.player.scores.length,
              itemBuilder: (BuildContext context, int index) {
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
            ),
          ),
        );
  }
}