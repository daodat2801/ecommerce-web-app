import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/freetrial_widget.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/pages/about/meet_our_team_section.dart';
import 'package:ecommerce_web_app/pages/team/widgets/banner_image_widget.dart';
import 'package:ecommerce_web_app/pages/team/widgets/banner_text_widget.dart';
import 'package:flutter/material.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Header(),),
      body:  const SingleChildScrollView(
        child: Column(
          children: [
            BannerTextWidget(),
            BannerImageWidget(),
            MeetOurTeamSection(),
            PricingFreetrialWidget(),
            Footer()
          ],
        )
      ),
      
    );
  }
}
