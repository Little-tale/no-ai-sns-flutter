import 'package:flutter/material.dart';

class IosButton extends StatefulWidget {
  const IosButton({
    super.key,
    required this.child,
    this.onPressed,
    this.pressedOpacity = 0.6,
  });

  final Widget child;
  final VoidCallback? onPressed;
  final double pressedOpacity;

  @override
  State<IosButton> createState() => _IosButtonState();
}

class _IosButtonState extends State<IosButton> {
  bool _pressed = false;

  void _setPressed(bool value) {
    if (_pressed == value) {
      return;
    }
    setState(() {
      _pressed = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) => _setPressed(true),
      onTapUp: (_) => _setPressed(false),
      onTapCancel: () => _setPressed(false),
      onTap: widget.onPressed,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 80),
        opacity: _pressed ? widget.pressedOpacity : 1.0,
        child: widget.child,
      ),
    );
  }
}

extension GestureExtensions on Widget {
  Widget onIOSTap(VoidCallback? onTap) {
    return IosButton(onPressed: onTap, child: this);
  }
}
