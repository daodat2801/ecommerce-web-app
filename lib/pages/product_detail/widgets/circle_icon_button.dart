import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../commons/constants/app_color.dart';

class CircleIconButton extends StatelessWidget {
  final String iconPath;

  const CircleIconButton({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.textWhiteColor,
        border: Border.all(
          color: AppColors.circleButtonColor,
          width: 1,
        ),
      ),
      child: SvgPicture.asset(
        iconPath,
        height: 20,
        width: 20,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
