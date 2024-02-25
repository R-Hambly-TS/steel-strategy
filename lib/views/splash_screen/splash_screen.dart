import 'package:flutter/material.dart';
import 'package:steel-strategy/core/widgets/bg_widget.dart';

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
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(-0.2, -0.4),
              child: Image.asset(Assets.images.banner),
            ), // Align
            Align(
              alignment: const Alignment(0, 0.4),
              child: Text(
                'Loading...',
                style: textTheme.headlineMedium
                    ?.copyWith(color: const Color(0xFF)),
            ), // Align
          ], // Children
        ) // Stack
    ); // BackgroundWidget
  }
}
