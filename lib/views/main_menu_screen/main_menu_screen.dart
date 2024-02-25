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
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Column(
                  children: [
                    CustomButton(
                        title: 'CREATE GAME!',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FindingLobbyScreen(
                                deviceType: DeviceType.advertiser),
                          ));
                        },
                        buttonStyleType: ButtonStyleType.green),
                    const SizedBox(height: 24),
                    CustomButton(
                        title: 'JOIN GAME!',
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const FindingLobbyScreen(
                              deviceType: DeviceType.browser,
                            ),
                          ));
                        },
                        buttonStyleType: ButtonStyleType.green)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
