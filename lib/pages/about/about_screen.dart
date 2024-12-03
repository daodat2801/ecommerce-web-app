import 'package:ecommerce_web_app/commons/widgets/footer.dart';
import 'package:ecommerce_web_app/commons/widgets/header.dart';
import 'package:ecommerce_web_app/pages/about/about_us_section.dart';
import 'package:ecommerce_web_app/pages/about/partners_section.dart';
import 'package:ecommerce_web_app/pages/about/statistics_section.dart';
import 'package:ecommerce_web_app/pages/about/meet_our_team_section.dart';
import 'package:ecommerce_web_app/pages/about/video_section.dart';
import 'package:ecommerce_web_app/pages/about/call_to_action_section.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(isExpanded: false),
            AboutUsSection(),
            StatisticsSection(),
            VideoSection(),
            MeetOurTeamSection(),
            PartnersSection(),
            CallToActionSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
