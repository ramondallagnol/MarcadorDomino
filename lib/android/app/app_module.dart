import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marcadordomino/android/app/app_controller.dart';
import 'package:marcadordomino/android/app/app_widget.dart';
import 'package:marcadordomino/android/screens/domino/domino_page.dart';
import 'package:marcadordomino/android/screens/finish/finish_page.dart';
import 'package:marcadordomino/android/screens/home/home_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
    Bind((inject) => AppController(),)
  ];


  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
    Router('/domino', child: (_, args) => DominoPage()),
    Router('/finish/:playerName',
        child: (_, args) => FinishPage(playerName: args.params['playerName'],)),
  ];

  @override
  Widget get bootstrap => AppWidget();

}