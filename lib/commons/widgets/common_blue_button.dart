import 'package:flutter/material.dart';
import '../constants/app_color.dart';

class CommonBlueButton extends StatelessWidget {
  final VoidCallback onPress;
  final String buttonLabel;

  const CommonBlueButton({
    super.key,
    required this.onPress,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12), // Padding
        ),
        child: Text(
          buttonLabel,
          style: const TextStyle(
            color: AppColors.textWhiteColor,
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
