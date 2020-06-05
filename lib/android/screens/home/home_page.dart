import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marcadordomino/android/app/app_controller.dart';
import 'package:form_field_validator/form_field_validator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomePage> {

  final AppController appController = Modular.get<AppController>();
  final _formKey = GlobalKey<FormState>();
  final requiredValidator = RequiredValidator(errorText: 'Campo obrigatório');

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 50,
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
            Form(
                child: Column(
                  children: <Widget>[

                  ],
                )
            ),
            Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: appController.game.player1.setName,
                    validator: requiredValidator,
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'Exemplo: João e Ana',
                        hintStyle: TextStyle(fontSize: 18.0, color: Colors.black26),
                        labelText: 'Dupla 1 / jogador 1',
                        labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20
                        )
                    ),
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    onChanged: appController.game.player2.setName,
                    validator: requiredValidator,
                    decoration: InputDecoration(
                        icon: Icon(Icons.person),
//                        border: InputBorder.none,
                        hintText: 'Exemplo: João e Ana',
                        hintStyle: TextStyle(fontSize: 18.0, color: Colors.black26),
                        labelText: 'Dupla 2 / jogador 2',
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
                    validator: requiredValidator,
                    decoration: InputDecoration(
                        icon: Icon(Icons.format_list_numbered, color: Colors.black38,),
//                        border: InputBorder.none,
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
                    height: 25,
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
                            'Começar Partida',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.pushNamed(context, '/domino');
                            }
                          },
                        )
                    ),
                  ),
                ],
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
