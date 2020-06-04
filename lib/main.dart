import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:marcadordomino/android/app/app_module.dart';

import 'android/app/app_widget.dart';

void main() {
  if (Platform.isAndroid) {
    runApp(ModularApp(module: AppModule(),));
  }
}

