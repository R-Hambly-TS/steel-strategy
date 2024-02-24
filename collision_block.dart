import 'package:flame/game.dart';
import 'packages:flame/component.dart';

class CollisionBlock extends PositionComponent {
  bool isPlatform;
  CollisionBlock({position, size, this.isPlatform = false})
      : super(
          position: position,
          size: size,
        ) {
    debugMode = true;
  }
}
