import 'package:flutter/material.dart';
import 'package:steel_strategy/core/widgets/bg_widget.dart';
import 'package:steel_strategy/core/widgets/custom_button.dart';
import 'package:steel_strategy/core/widgets/custom_chip.dart';
import 'package:steel_strategy/views/steel_strategy_screen/steel_strategy_screen.dart';

class FindingLobbyScreen extends StatefulWidget {
  const FindingLobbyScreen({super.key});

  @override
  State<FindingLobbyScreen> createState() => _FindingLobbyScreenState();
}

class _FindingLobbyScreenState extends State<FindingLobbyScreen> {
  @override
  Widget build(BuildContext context) {
    return BackgroundWidget(
      child: SafeArea(
        child: Column(
          children: [
            CustomChip(
                title: 'SCANNING...'),
            Expanded(
              flex: 4,
              child: Center(),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: CustomButton(
                    title: 'START GAME',
                      buttonStyleType: ButtonStyleType.blue
                ), // CustomButton
              ), // Center
            ), // Expanded
          ], // Children
        ), // Column
      ), // SafeArea
    ); // BackgroundWidget
  } // Build
} // _FindingLobbyScreenState
