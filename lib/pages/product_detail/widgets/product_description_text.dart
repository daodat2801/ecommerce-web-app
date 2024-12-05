import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';

class ProductDescriptionText extends StatelessWidget {
  const ProductDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'the quick fox jumps over',
              style: TextStyle(
                color: AppColors.textPrimaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Met minim Mollie non desert Alamo est sit cliquey dolor do met sent. '
              'RELIT official consequent door ENIM RELIT Mollie. Excitation venial consequent sent nostrum met.\n\n'
              'Met minim Mollie non desert Alamo est sit cliquey dolor do met sent. RELIT official consequent door ENIM RELIT Mollie. '
              'Excitation venial consequent sent nostrum met.\n\n'
              'Met minim Mollie non desert Alamo est sit cliquey dolor do met sent. RELIT official consequent door ENIM RELIT Mollie. '
              'Excitation venial consequent sent nostrum met.',
              style: TextStyle(
                color: AppColors.textMediumGrayColor,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
