import 'package:flutter/material.dart';
import 'package:steel_strategy/views/finding_lobby_screen/finding_lobby_screen.dart';
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
      title: 'Steel Strategy',
      initialRoute: '/',
      routes: {
        '/first': (context) => SplashScreen(),
        '/second': (context) => NewPlayerScreen(),
        '/third': (context) => MainMenuScreen(),
        '/fourth': (context) => FindingLobbyScreen(),
      },
      theme: ThemeData(
        fontFamily: 'sans-serif',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ), // ThemeData
      home: SplashScreen(),
    ); // MaterialApp
  }
}
