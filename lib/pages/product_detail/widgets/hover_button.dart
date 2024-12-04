import 'package:flutter/material.dart';

import '../../../commons/widgets/common_blue_button.dart';

class HoverButton extends StatefulWidget {
  final VoidCallback onPress;
  final String buttonLabel;

  const HoverButton({
    super.key,
    required this.onPress,
    required this.buttonLabel,
  });

  @override
  _HoverButtonState createState() => _HoverButtonState();
}

class _HoverButtonState extends State<HoverButton> {
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
        duration: const Duration(milliseconds: 300),
        child: CommonBlueButton(
            onPress: widget.onPress, buttonLabel: widget.buttonLabel),
      ),
    );
  }
}