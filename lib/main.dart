import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pomodoro/store/pomodoro_store.dart';
import 'app.dart';

void main() {
  runApp(const App());

  GetIt.I.registerSingleton(PomodotoStore());
}
