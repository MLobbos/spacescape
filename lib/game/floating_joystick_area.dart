import 'package:flame/components.dart';
import 'package:flame/events.dart';

import 'game.dart';

/// A full-screen HUD component that repositions the joystick to where
/// the user starts dragging, and forwards drag events to the joystick.
class FloatingJoystickArea extends PositionComponent
    with DragCallbacks, HasGameReference<SpacescapeGame> {
  final JoystickComponent joystick;

  int? _activePointerId;

  FloatingJoystickArea({required this.joystick});

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    // Cover the whole fixed resolution area of the game.
    size = game.fixedResolution.clone();
    position = Vector2.zero();
    anchor = Anchor.topLeft;
    priority = 10; // Slightly above default to ensure early event capture
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    // Keep covering the fixed resolution area used by the viewport.
    this.size = game.fixedResolution.clone();
  }

  @override
  void onDragStart(DragStartEvent event) {
    super.onDragStart(event);
    // If already tracking a pointer, ignore new ones.
    if (_activePointerId != null) {
      return;
    }

    _activePointerId = event.pointerId;

    // Move joystick to the finger location and delegate the event.
    joystick.anchor = Anchor.center;
    joystick.position = event.localPosition;

    // Forward to joystick so it starts tracking immediately.
    joystick.onDragStart(event);
  }

  @override
  void onDragUpdate(DragUpdateEvent event) {
    if (event.pointerId != _activePointerId) return;
    joystick.onDragUpdate(event);
  }

  @override
  void onDragEnd(DragEndEvent event) {
    super.onDragEnd(event);
    if (event.pointerId != _activePointerId) return;

    joystick.onDragEnd(event);
    _activePointerId = null;
  }

  @override
  void onDragCancel(DragCancelEvent event) {
    super.onDragCancel(event);
    if (event.pointerId != _activePointerId) return;

    joystick.onDragCancel(event);
    _activePointerId = null;
  }
}
