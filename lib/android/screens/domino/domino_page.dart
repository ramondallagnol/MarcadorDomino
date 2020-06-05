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
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 50,
                        child: PlayerInfo(),
                      ),
                      Container(
                        height: 500,
                        child: Pontuation(),
                      ),
                    ],
                  )
              ),
            ),
            SizedBox(
              height: 15,
            ),
            const Divider(
              indent: 40,
              endIndent: 40,
              thickness: 3,
              color: Colors.black,
            ),
            Container(
                height: 130,
                child: Center(
                    child: Score()
                )
            )
          ],
        ),
      )
    );
  }
}