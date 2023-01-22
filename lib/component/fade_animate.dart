import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

enum AnimationType  { opacity, translateX  }
class FadeAnimation extends StatefulWidget {
  final double delay;
  final int animationType;
  final Widget child;

  FadeAnimation(this.delay, this.animationType ,this.child);

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation =
        Tween<double>(begin: 0.0, end: 1).animate(_animationController);
    _animationController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tween = MultiTween<AnimationType>()
      ..add(AnimationType.opacity, Tween(begin: 0.0, end: 1.0),
        Duration(milliseconds: 500),)
      ..add(
          AnimationType.translateX,
          Tween(begin: 30.0, end: 1.0),
          Duration(milliseconds: 500)
      );

    return PlayAnimation<MultiTweenValues<AnimationType>>(
      delay: Duration(milliseconds: (500 * widget.delay).round()),
      duration: tween.duration,
      tween: tween,
      child: widget.child,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AnimationType.opacity),
        child: widget.animationType == 1 ? Transform.translate(
            offset: Offset(value.get(AnimationType.translateX), 0), child: child)
            : widget.animationType == 2 ? ScaleTransition(
            scale: _animation, child: child)
            : FadeTransition(
            opacity: _animation,
            child: child),
      ),
    );
  }
}

