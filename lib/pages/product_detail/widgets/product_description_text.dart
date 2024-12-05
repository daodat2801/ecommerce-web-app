import 'package:flutter/material.dart';
import '../../../commons/constants/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProductDescriptionText extends StatelessWidget {
  const ProductDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    return Flexible(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              localization.the_quick_fox_jumps_over,
              style: const TextStyle(
                color: AppColors.textPrimaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
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
