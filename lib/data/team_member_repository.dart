import 'dart:convert';
import 'package:ecommerce_web_app/models/team_member.dart';
import 'package:flutter/services.dart';

class TeamMemberRepository {
  Future<List<TeamMember>> fetchTeamMembers() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      final String response =
          await rootBundle.loadString('assets/data/team.json');
      Map<String, dynamic> data = json.decode(response);
      final List<dynamic> teamMembersData =
          data['meetOurTeamSection']?['teamMembers'] ?? [];
      print(teamMembersData);
      return teamMembersData
          .map((teamMember) => TeamMember.fromJson(teamMember))
          .toList();
    } catch (e) {
      return [];
    }
  }
}
