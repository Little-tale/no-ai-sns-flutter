import 'package:flutter/material.dart';
import 'package:no_ai_sns/core/constants/app_size.dart';

extension ExtToast on Widget {
  void showTopToast(
    BuildContext context,
    Widget child, {
    Duration duration = const Duration(seconds: 3),
  }) {
    final overlay = Overlay.of(context, rootOverlay: true);
    late final OverlayEntry entry;
    entry = OverlayEntry(
      builder: (_) => _TopToastOverlay(
        topOffset: context.safeAreaTop + 8,
        onDismiss: entry.remove,
        duration: duration,
        child: child,
      ),
    );

    overlay.insert(entry);
  }
}

class _TopToastOverlay extends StatefulWidget {
  const _TopToastOverlay({
    required this.child,
    required this.topOffset,
    required this.onDismiss,
    required this.duration,
  });

  final Widget child;
  final double topOffset;
  final Duration duration;
  final VoidCallback onDismiss;

  @override
  State<_TopToastOverlay> createState() => _TopToastOverlayState();
}

class _TopToastOverlayState extends State<_TopToastOverlay>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;
  late final Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
    );
    final curve = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _opacity = Tween<double>(begin: 0.0, end: 1.0).animate(curve);
    _offset = Tween<Offset>(
      begin: const Offset(0, -0.3),
      end: Offset.zero,
    ).animate(curve);

    _controller.forward();
    _autoDismiss();
  }

  Future<void> _autoDismiss() async {
    await Future.delayed(widget.duration);
    if (!mounted) {
      return;
    }
    await _controller.reverse();
    if (mounted) {
      widget.onDismiss();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.topOffset,
      left: 0,
      right: 0,
      child: SlideTransition(
        position: _offset,
        child: FadeTransition(
          opacity: _opacity,
          child: Align(
            alignment: Alignment.topCenter,
            child: Material(color: Colors.transparent, child: widget.child),
          ),
        ),
      ),
    );
  }
}
