import 'package:flutter/material.dart';
import 'package:steel_strategy/core/widgets/bg_widget.dart';
import 'package:steel_strategy/core/widgets/custom_button.dart';
import 'package:steel_strategy/core/widgets/custom_chip.dart';
import 'package:steel_strategy/core/widgets/custom_textfield.dart';
import 'package:steel_strategy/views/home_screen/main_menu_screen.dart';

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
      child: SafeArea(
        child: Column(
          children: [
            const CustomChip(title: 'ENTER PLAYER NAME'),
            Expanded(
              flex: 3,
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'PLAYER NAME',
                          style: textTheme.headlineSmall
                              ?.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 10),
                      ], // Children
                    ), // Column
                  ), // Padding
                ), // SizedBox
              ), // Center
            ), // Expanded
            Expanded(
              flex: 2,
              child: Center(
                child: CustomButton(
                    title: 'Continue',
                    buttonStyleType: ButtonStyleType.blue),
              ), // Center
            ), // Expanded
          ], // Children
        ), // Column
      ), // SafeArea
    ); // BackgroundWidget
  } // build
} // _NewPlayerScreenState
