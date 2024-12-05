import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/commons/utils/extensions.dart';
import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = context.deviceSize.width;
    return SizedBox(
      height: width * 0.4,
      width: width,
      child: Stack(children: [
        Image.asset(
          AppImage.clothHome,
          width: width,
          fit: BoxFit.fitWidth,
        ),
        Positioned(
          bottom: 40,
          left: 250,
          child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                child: Text(
                  "Shop now",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.white),
                ),
              )),
        )
      ]),
    );
  }
}
