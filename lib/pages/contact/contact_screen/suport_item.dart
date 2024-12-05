import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SupportItem extends StatefulWidget {
  final bool isDark;
  final String icon;

  const SupportItem({
    required this.isDark,
    required this.icon,
    super.key,
  });

  @override
  State<SupportItem> createState() => _SupportItemState();
}

class _SupportItemState extends State<SupportItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.isDark ? AppColors.textPrimaryColor : AppColors.white,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
      child: Column(
        children: [
          SvgPicture.asset(widget.icon, width: 72, height: 72),
          const SizedBox(height: 30),
          Text(
            "georgia.young@example.com\ngeorgia.young@ple.com",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: widget.isDark
                    ? AppColors.white
                    : AppColors.textPrimaryColor),
          ),
          const SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.contact_get_support,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: widget.isDark
                    ? AppColors.white
                    : AppColors.textPrimaryColor),
          ),
          const SizedBox(height: 30),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: AppColors.primaryColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(37),
                ),
              ),
              onPressed: () {},
              child: Text(
                 AppLocalizations.of(context)!.contact_submit_request,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.primaryColor),
              ))
        ],
      ),
    );
  }
}
