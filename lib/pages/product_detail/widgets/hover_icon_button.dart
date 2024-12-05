import 'package:flutter/material.dart';
import 'circle_icon_button.dart';

class HoverIconButton extends StatefulWidget {
  final String iconPath;
  final VoidCallback onTap;

  const HoverIconButton(
      {super.key, required this.iconPath, required this.onTap});

  @override
  _HoverIconButtonState createState() => _HoverIconButtonState();
}

class _HoverIconButtonState extends State<HoverIconButton> {
  double scale = 1.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          scale = 1.1;
        });
      },
      onExit: (_) {
        setState(() {
          scale = 1.0;
        });
      },
      child: AnimatedScale(
        scale: scale,
        duration: const Duration(milliseconds: 100),
        child: CircleIconButton(
          iconPath: widget.iconPath,
          onTap: widget.onTap,
        ),
      ),
    );
  }
}
