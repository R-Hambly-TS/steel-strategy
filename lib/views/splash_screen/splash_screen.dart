import 'package:flutter/material.dart';
import 'package:steel_strategy/core/assets/assets.dart';
import 'package:steel_strategy/core/assets/images.dart';
import 'package:steel_strategy/core/widgets/bg_widget.dart';
import 'package:steel_strategy/views/main_menu_screen/main_menu_screen.dart';
import 'package:steel_strategy/views/new_player_screen/new_player_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BackgroundWidget(
        child: Stack(children: [
      Align(
        alignment: const Alignment(-0.2, -0.4),
        child: Image.asset(Images.banner),
      ), // Align
      Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewPlayerScreen()),
            );
          },
          child: Text('BEGIN'),
        ),
      ),
    ] // Stack
            )); // BackgroundWidget
  }
}
