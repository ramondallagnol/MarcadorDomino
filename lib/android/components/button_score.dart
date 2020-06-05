import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:marcadordomino/android/app/app_controller.dart';
import 'package:marcadordomino/android/models/player.dart';

class ButtonScore extends StatefulWidget {
  final Player player;
  ButtonScore(this.player);
  @override
  _ButtonScoreState createState() => _ButtonScoreState();
}

class _ButtonScoreState extends State<ButtonScore> {
  final scoreController = TextEditingController();
  final appController = Modular.get<AppController>();
  var _score = 1.0;

  Future _scoreDialog() async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Pontos para ${widget.player.name}", textAlign: TextAlign.center,),
          content: ListView(
            shrinkWrap: true,
            children: [
              Center(
                child: Container(
                  width: 128,
                  child: SpinBox(
                    min: 1,
                    max: 80,
                    value: 1,
                    spacing: 24,
                    direction: Axis.vertical,
                    textStyle: TextStyle(fontSize: 48),
                    autofocus: true,
                    incrementIcon: Icon(Icons.keyboard_arrow_up, size: 40),
                    decrementIcon: Icon(Icons.keyboard_arrow_down, size: 40),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: const EdgeInsets.all(24),
                    ),
                    onChanged: (value) => _score = value,
                  ),
                ),
              ),
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
                widget.player.addScore(_score.toInt());
                scoreController.clear();
                Navigator.of(context).pop();
                if(widget.player.isWins(appController.game.scoreGame)) {
                  widget.player.victory++;
                  Navigator.pushReplacementNamed(context, '/finish/${widget.player.name}');
                }
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
      icon: Icon(Icons.add, color: Colors.black,),
    );
  }
}
