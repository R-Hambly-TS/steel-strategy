import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flame/game.dart';
import 'package:flame/flame.dart';
import 'package:steel_strategy/steel_strategy.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Flame.device.fullScreen();
  await Flame.device.setLandscape();

  SteelStrategy game = SteelStrategy();
  runApp(GameWidget(game: kDebugMode ? SteelStrategy() : game));
}
