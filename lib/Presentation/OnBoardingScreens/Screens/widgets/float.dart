import 'package:flutter/material.dart';
import 'package:xenotune_flutter_dev/Core/colors.dart';
import 'package:xenotune_flutter_dev/Core/google_fonts.dart';

class FloatingMoodButton extends StatefulWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;
  final Color colors;
  final double horizontalPadding;

  const FloatingMoodButton({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onTap,
    required this.colors,
    required this.horizontalPadding,
  });

  @override
  State<FloatingMoodButton> createState() => _FloatingMoodButtonState();
}

class _FloatingMoodButtonState extends State<FloatingMoodButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _floatAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _floatAnimation = Tween<double>(
      begin: 0,
      end: 20,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void didUpdateWidget(covariant FloatingMoodButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected) {
      _controller.stop();
    } else {
      _controller.repeat(reverse: true);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _floatAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, widget.isSelected ? 10 : _floatAnimation.value),
          child: GestureDetector(
            onTap: widget.onTap,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: widget.horizontalPadding,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                color: widget.isSelected ? kPrimaryPurple : widget.colors,

                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                widget.label,
                style: inter(
                  color: widget.isSelected ? kwhite : kblack,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
