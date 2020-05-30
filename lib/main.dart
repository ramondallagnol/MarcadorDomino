import 'dart:io';
import 'package:flutter/material.dart';
import 'android/android.app.dart';

void main() {
  if (Platform.isAndroid) {
    runApp(AndroidApp());
  }
}

