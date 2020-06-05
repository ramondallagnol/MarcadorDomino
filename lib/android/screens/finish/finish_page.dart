import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marcadordomino/android/app/app_controller.dart';

class FinishPage extends StatefulWidget {
  final String playerName;
  FinishPage({this.playerName});

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<FinishPage> {

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
        child: Container(
          child: ListView(
            children: <Widget>[
              Text(
                '${widget.playerName}',
                style: TextStyle(color: Colors.black, fontSize: 32, fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 140,
                height: 130,
                child: Image.network('https://i0.wp.com/multarte.com.br/wp-content/uploads/2018/11/coroa-png-sem-fundo5.png?fit=276%2C269&ssl=1'),
//                child: Image.asset("assets/domino.png"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Parabéns ${widget.playerName}, você é o vencedor da rodada. \n\n O que deseja fazer?',
                style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
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
                    child: FlatButton(
                      child: Text(
                        'Jogar novamente',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/domino');
                      },
                    ),
                ),
              ),
              SizedBox(
                height: 20,
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
                  child: FlatButton(
                    child: Text(
                      'Alterar Jogadores',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/domino');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}