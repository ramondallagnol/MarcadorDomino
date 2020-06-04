import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marcadordomino/android/app/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomePage> {

  final AppController appController = Modular.get<AppController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40
        ),
        child: ListView(
          children: <Widget>[
            Text(
              'Marcador Dominó',
              style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 140,
              height: 130,
              child: Image.asset("assets/domino.png"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Insira as informações abaixo para iniciar a partida',
              style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              onChanged: appController.game.player1.setName,
              initialValue: 'Jogador 1',
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none,
                  hintText: 'Nome do jogador ou dupla 1',
                  hintStyle: TextStyle(fontSize: 18.0, color: Colors.black26),
                  labelText: 'Jogador 1',
                  labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  )
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              initialValue: 'Jogador 2',
              onChanged: appController.game.player2.setName,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: InputBorder.none,
                  hintText: 'Nome do jogador ou dupla 2',
                  hintStyle: TextStyle(fontSize: 18.0, color: Colors.black26),
                  labelText: 'Jogador 2',
                  labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  )
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              initialValue: '100',
              onChanged: (value) => appController.game.setScoreGame(int.parse(value)),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.format_list_numbered, color: Colors.black38,),
                  border: InputBorder.none,
                  hintText: 'Quantidade de pontos da partida',
                  hintStyle: TextStyle(fontSize: 18.0, color: Colors.black26),
                  labelText: 'Pontos',
                  labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 20
                  )
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0xFFF92B7F)
                  ]
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              child: SizedBox.expand(
                child: Observer(
                  builder: (_) {
                    return appController.game.isGameValid ? FlatButton(
                      child: Text(
                        'Começar Partida',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      onPressed: () {
                        print(appController.game.isGameValid);
                        print(appController.game.player1.name);
                        print(appController.game.player2.name);
                        print(appController.game.scoreGame);
                        Navigator.pushNamed(context, '/domino');
                      },
                    ) : RaisedButton(
                      child: Text(
                        'Começar Partida',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      onPressed: null,
                    );
                  }
                )
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
