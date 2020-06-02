import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marcadordomino/android/styles.dart';
import 'package:provider/provider.dart';
import '../android/screens/domino.dart';
import 'models/game.dart';
import 'models/player.dart';
import 'stores/game_controller.dart';

class AndroidApp extends StatefulWidget {
  @override
  _AndroidAppState createState() => _AndroidAppState();
}

class _AndroidAppState extends State<AndroidApp> {
  final scoreController = TextEditingController();
  final controller = GameController();

  void _addScore(int score, Player player) {
    setState(() {
      player.addScore(score);
    });
  }

  void _validatePlayerIsWins(Player player) {
//    if ( player.isWins(_game.scoreGame) ) {
//      player.victory++;
////      _showDialogWins()
//    }
  }

  Future<void> _showDialogWins(Player player) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('${player.name} venceu!'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Bora jogar mais uma?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Jogar novamente'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future _scoreDialog(Player player) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Pontos para ${player.name}"),
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
                _addScore(int.parse(scoreController.text), player);
                scoreController.clear();
                Navigator.of(context).pop();
                _validatePlayerIsWins(player);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => GameController(),
      child: MaterialApp(
        title: 'Marcador Dominó',
        debugShowCheckedModeBanner: false,
        theme: androidTheme(),
        home: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text('Marcador Dominó'),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.refresh, color: Colors.white,),
                    iconSize: 30,
                    onPressed: null
                ),
              ],
            ),
            body: Domino()
        ),
      )
    );
  }
}