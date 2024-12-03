import 'package:flutter/material.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 112, horizontal: 226),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          "assets/images/scenic_image_with_play_button_overlay.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
