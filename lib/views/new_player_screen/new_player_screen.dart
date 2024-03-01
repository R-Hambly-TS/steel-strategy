import 'package:flutter/material.dart';
import 'package:steel_strategy/core/widgets/bg_widget.dart';
import 'package:steel_strategy/core/widgets/custom_chip.dart';
import 'package:steel_strategy/core/widgets/custom_textfield.dart';
import 'package:steel_strategy/views/main_menu_screen/main_menu_screen.dart';

class NewPlayerScreen extends StatefulWidget {
  const NewPlayerScreen({super.key});

  @override
  State<NewPlayerScreen> createState() => _NewPlayerScreenState();
}

class _NewPlayerScreenState extends State<NewPlayerScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return BackgroundWidget(
      child: Stack(
        children: [
          const CustomChip(title: 'ENTER PLAYER NAME'),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenuScreen()),
                );
              },
              child: Text('Continue'),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'PLAYER NAME',
                ),
              )
            ], // Children
          ), // Column
        ],
      ), // Stack
    );
  } // build
} // _NewPlayerScreenState
