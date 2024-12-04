import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class CardItemWidget extends ConsumerWidget {
  final String imageUrl;
  final String name;
  final String profession;

  const CardItemWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.profession,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
          height: 230,
          width: 330,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF252B42),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          profession,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF737373),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppSvgs.icFbBlue, height: 16, width: 16),
            const SizedBox(width: 5),
            SvgPicture.asset(AppSvgs.icIgBlue, height: 16, width: 16),
            const SizedBox(width: 5),
            SvgPicture.asset(AppSvgs.icTwBlue, height: 16, width: 16),
          ],
        ),
      ],
    );
  }
}
