import 'dart:convert';
import 'package:ecommerce_web_app/models/about_us.dart';
import 'package:flutter/services.dart';

class AboutUsRepository {
  Future<Map<String, dynamic>> loadAboutUsData() async {
    final String response =
        await rootBundle.loadString('assets/data/about.json');
    final data = json.decode(response);
    return data;
  }

  Future<AboutUs> getAboutUsData() async {
    final data = await loadAboutUsData();
    return AboutUs.fromJson(data['aboutUsSection']);
  }

  Future<Statistics> getStatisticsData() async {
    final data = await loadAboutUsData();
    return Statistics.fromJson(data['statisticsSection']);
  }

  Future<Video> getVideoData() async {
    final data = await loadAboutUsData();
    return Video.fromJson(data['videoSection']);
  }

  Future<MeetOurTeam> getMeetOurTeamData() async {
    final data = await loadAboutUsData();
    return MeetOurTeam.fromJson(data['meetOurTeamSection']);
  }

  Future<Partners> getPartnersData() async {
    final data = await loadAboutUsData();
    return Partners.fromJson(data['partnersSection']);
  }

  Future<CallToAction> getCallToActionData() async {
    final data = await loadAboutUsData();
    return CallToAction.fromJson(data['callToActionSection']);
  }
}
