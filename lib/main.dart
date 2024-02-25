import 'package:flutter/material.dart';
import 'package:steel_strategy/views/splash_screen/splash_screen.dart';
import 'package:steel_strategy/views/new_player_screen/new_player_screen.dart';
import 'package:steel_strategy/views/main_menu_screen/main_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demp',
      theme: ThemeData(
        fontFamily: 'sans-serif',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: ture,
      ), // ThemeData
      home: MainMenuScreen(),
    ); // MaterialApp
  }
}
