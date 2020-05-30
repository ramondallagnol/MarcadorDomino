import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marcadordomino/android/models/player.dart';

class ButtonScore extends StatefulWidget {
  Player player;
  ButtonScore(this.player);
  @override
  _ButtonScoreState createState() => _ButtonScoreState();
}

class _ButtonScoreState extends State<ButtonScore> {
  final scoreController = TextEditingController();

  void _addScore(int score, Player player) {
    setState(() {
      player.addScore(score);
    });
  }

  Future _scoreDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Pontos para ${widget.player.name}"),
          content: new TextField(
            controller: scoreController,
            autofocus: true,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              WhitelistingTextInputFormatter.digitsOnly
            ],
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Adicionar"),
              onPressed: () {
                _addScore(int.parse(scoreController.text), widget.player);
                scoreController.clear();
                Navigator.of(context).pop();
//                _validatePlayerIsWins(player);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: _scoreDialog,
      iconSize: 50,
      splashColor: Colors.green,
      icon: Icon(Icons.add, color: Colors.white,),
    );
  }
}
