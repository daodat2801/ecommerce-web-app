import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../commons/constants/app_color.dart';

class CircleIconButton extends StatefulWidget {
  final String iconPath;
  final VoidCallback onTap;

  const CircleIconButton({super.key, required this.iconPath, required this.onTap});

  @override
  State<CircleIconButton> createState() => _CircleIconButtonState();
}

class _CircleIconButtonState extends State<CircleIconButton> {
  Color _backgroundColor = AppColors.textWhiteColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _backgroundColor = AppColors.dividerLightGrayColor;
        });

        Future.delayed(const Duration(milliseconds: 100), () {
          setState(() {
            _backgroundColor = AppColors.textWhiteColor;
          });
        });

        widget.onTap();  // Call the onTap function
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _backgroundColor,  // Use the dynamic background color
          border: Border.all(
            color: AppColors.circleButtonColor,
            width: 1,
          ),
        ),
        child: SvgPicture.asset(
          widget.iconPath,
          height: 20,
          width: 20,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
