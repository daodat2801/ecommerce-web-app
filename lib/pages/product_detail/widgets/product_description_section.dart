import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../commons/constants/app_color.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.whiteBackgroundColor,
      width: double.infinity,
      child: Center(
        child: SizedBox(
          width: 1050,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 72,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Description',
                      style: TextStyle(
                        color: AppColors.textMediumGrayColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 48),
                    Text(
                      'Additional Information',
                      style: TextStyle(
                        color: AppColors.textMediumGrayColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 48),
                    Text(
                      'Reviews',
                      style: TextStyle(
                        color: AppColors.textMediumGrayColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '(0)',
                      style: TextStyle(
                        color: AppColors.textColorGreen,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: AppColors.dividerLightGrayColor,
                height: 1,
              ),
              const SizedBox(height: 42),
              SizedBox(
                height: 427,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 45),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                height: 382,
                                width: 325,
                                decoration: BoxDecoration(
                                  color: AppColors.grayImageBackground,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  AppImage.productDesImage,
                                  fit: BoxFit.cover,
                                  width: 316,
                                  height: 372,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    const Flexible(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
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
                                'Met minim Mollie non desert Alamo est sit cliquey '
                                'dolor do met sent. RELIT official consequent door '
                                'ENIM RELIT Mollie. Excitation venial consequent sent '
                                'nostrum met.\n\nMet minim Mollie non desert Alamo '
                                'est sit cliquey dolor do met sent. RELIT official '
                                'consequent door ENIM RELIT Mollie. Excitation venial'
                                ' consequent sent nostrum met.\n\n'
                                'Met minim Mollie non desert Alamo est sit cliquey '
                                'dolor do met sent. RELIT official consequent door '
                                'ENIM RELIT Mollie. Excitation venial consequent sent '
                                'nostrum met.',
                                style: TextStyle(
                                  color: AppColors.textMediumGrayColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                        )),
                    const SizedBox(width: 30),
                    Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'the quick fox jumps over',
                              style: TextStyle(
                                color: AppColors.textPrimaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 30),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    AppSvgs.iconArrowDark,
                                    height: 16,
                                    width: 9,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 23),
                                  const Text(
                                    'the quick fox jumps over the lazy dog',
                                    style: TextStyle(
                                      color: AppColors.textMediumGrayColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    AppSvgs.iconArrowDark,
                                    height: 16,
                                    width: 9,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 23),
                                  const Text(
                                    'the quick fox jumps over the lazy dog',
                                    style: TextStyle(
                                      color: AppColors.textMediumGrayColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    AppSvgs.iconArrowDark,
                                    height: 16,
                                    width: 9,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 23),
                                  const Text(
                                    'the quick fox jumps over the lazy dog',
                                    style: TextStyle(
                                      color: AppColors.textMediumGrayColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    AppSvgs.iconArrowDark,
                                    height: 16,
                                    width: 9,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 23),
                                  const Text(
                                    'the quick fox jumps over the lazy dog',
                                    style: TextStyle(
                                      color: AppColors.textMediumGrayColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 25),
                            const Text(
                              'the quick fox jumps over',
                              style: TextStyle(
                                color: AppColors.textPrimaryColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),
                            const SizedBox(height: 30),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    AppSvgs.iconArrowDark,
                                    height: 16,
                                    width: 9,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 23),
                                  const Text(
                                    'the quick fox jumps over the lazy dog',
                                    style: TextStyle(
                                      color: AppColors.textMediumGrayColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    AppSvgs.iconArrowDark,
                                    height: 16,
                                    width: 9,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 23),
                                  const Text(
                                    'the quick fox jumps over the lazy dog',
                                    style: TextStyle(
                                      color: AppColors.textMediumGrayColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 10),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: <Widget>[
                                  SvgPicture.asset(
                                    AppSvgs.iconArrowDark,
                                    height: 16,
                                    width: 9,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(width: 23),
                                  const Text(
                                    'the quick fox jumps over the lazy dog',
                                    style: TextStyle(
                                      color: AppColors.textMediumGrayColor,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
