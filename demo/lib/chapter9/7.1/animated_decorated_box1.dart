import 'package:flutter/material.dart';

class AnimatedDecoratedBox1 extends ImplicitlyAnimatedWidget {
  AnimatedDecoratedBox1({
    Key key,
    @required this.decoration,
    @required this.child,
    Curve curve = Curves.linear,
    @required Duration duration,
  }) : super(key: key, curve: curve, duration: duration);

  final BoxDecoration decoration;
  final Widget child;

  @override
  ImplicitlyAnimatedWidgetState<ImplicitlyAnimatedWidget> createState() {
    return _AnimatedDecoratedBoxState();
  }
}

class _AnimatedDecoratedBoxState
    extends AnimatedWidgetBaseState<AnimatedDecoratedBox1> {
  var _decoration;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: _decoration.evaluate(animation),
      child: widget.child,
    );
  }

  @override
  void forEachTween(TweenVisitor visitor) {
    _decoration = visitor(_decoration, widget.decoration,
        (value) => DecorationTween(begin: value));
  }
}
