import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../styles.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marcador Dominó',
      debugShowCheckedModeBanner: false,
//      theme: androidTheme(),
      initialRoute: '/',
      navigatorKey: Modular.navigatorKey,
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
