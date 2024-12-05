import 'package:ecommerce_web_app/data/about_us_repository.dart';
import 'package:ecommerce_web_app/models/about_us.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final aboutUsRepositoryProvider = Provider<AboutUsRepository>((ref) {
  return AboutUsRepository();
});

final aboutUsProvider = FutureProvider<AboutUs>((ref) async {
  final repository = ref.watch(aboutUsRepositoryProvider);
  return await repository.getAboutUsData();
});

final statisticsProvider = FutureProvider<Statistics>((ref) async {
  final repository = ref.watch(aboutUsRepositoryProvider);
  return await repository.getStatisticsData();
});

final videoProvider = FutureProvider<Video>((ref) async {
  final repository = ref.watch(aboutUsRepositoryProvider);
  return await repository.getVideoData();
});

final meetOurTeamProvider = FutureProvider<MeetOurTeam>((ref) async {
  final repository = ref.watch(aboutUsRepositoryProvider);
  return await repository.getMeetOurTeamData();
});

final partnersProvider = FutureProvider<Partners>((ref) async {
  final repository = ref.watch(aboutUsRepositoryProvider);
  return await repository.getPartnersData();
});

final callToActionProvider = FutureProvider<CallToAction>((ref) async {
  final repository = ref.watch(aboutUsRepositoryProvider);
  return await repository.getCallToActionData();
});
