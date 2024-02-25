import 'package:flutter/material.dart';
import 'package:steel_strategy/core/assets/assets.dart';
import 'package:steel_strategy/core/widgets/bg_widget.dart';
import 'package:steel_strategy/core/widgets/custom_button.dart';
import 'package:steel_strategy/core/widgets/custom_chip.dart';
import 'package:steel_strategy/views/finding_lobby_screen/finding_lobby_screen.dart';

class MainMenuScreen extends StatelessWidget {
  const MainMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(
          children: [
            CustomChip(title: 'WELCOME BACK, '),
            Expanded(
              flex: 3,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 32.0),
                  child: Image.asset(Assets.images.banner),
                ), // Padding
              ), // Center
            ), // Expanded
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  children: [
                    CustomButton(
                        title: 'CREATE GAME!',
                        buttonStyleType: ButtonStyleType.blue),
                    const SizedBox(height: 24),
                  ], // Children
                ), // Column
              ), // Center
            ), // Epxanded
          ], // Children
        ), // Column
      ), // Child SafeArea
    ); // BackgroundWidget
  } // build
} // MainMenuScreen
