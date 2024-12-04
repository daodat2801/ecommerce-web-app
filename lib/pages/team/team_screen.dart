import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/freetrial_widget.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/pages/team/widgets/banner_image_widget.dart';
import 'package:ecommerce_web_app/pages/team/widgets/banner_text_widget.dart';
import 'package:ecommerce_web_app/pages/team/widgets/card_item_widget.dart';
import 'package:ecommerce_web_app/services/view_model_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TeamScreen extends ConsumerWidget {
  const TeamScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamState = ref.watch(ViewModelProvider.teamScreenVMProvider);
    ref
        .read(ViewModelProvider.teamScreenVMProvider.notifier)
        .fetchTeamMembers();
    return Scaffold(
      appBar: AppBar(
        title: const Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BannerTextWidget(),
            const BannerImageWidget(),
            const SizedBox(height:112),
            const Text('Meet Our Team',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              height: 50/40,
              fontWeight: FontWeight.w700,
              color: AppColors.productColorBlack,
              letterSpacing: 0.2
            ),),
            const SizedBox(
              height: 112,
            ),
            SizedBox(
              height: 383 * (teamState.teamMembers.length / 3),
              width: 1034,
              child: teamState.teamMembers.isEmpty
                  ? const Text('Empty')
                  : GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 30,
                      ),
                      itemCount: teamState.teamMembers.length,
                      itemBuilder: (context, index) {
                        final team = teamState.teamMembers[index];
                        return CardItemWidget(
                          imageUrl: 'assets/images/cloth3.png',
                          name: team.username,
                          profession: team.profession,
                        );
                      },
                    ),
            ),
            const PricingFreetrialWidget(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
