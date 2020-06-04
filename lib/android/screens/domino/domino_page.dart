import 'package:flutter/material.dart';
import 'package:marcadordomino/android/components/potuation.dart';
import 'package:marcadordomino/android/components/score.dart';
import '../../components/player_info.dart';

class DominoPage extends StatefulWidget {
  @override
  _DominoState createState() => _DominoState();
}

class _DominoState extends State<DominoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: 30,
            left: 40,
            right: 40
        ),
        child: ListView(
          children: <Widget>[
            PlayerInfo(),
            SizedBox(
              height: 20,
            ),
            Pontuation(),
            SizedBox(
              height: 5,
            ),
            const Divider(
              height: 10,
              thickness: 3,
              color: Colors.black,
            ),
            Score(),
          ],
        ),
      ),
    );



  }
}