import 'package:ecommerce_web_app/models/team_member.dart';

class TeamScreenState {
  final List<TeamMember> teamMembers;
  TeamScreenState({required this.teamMembers});
  factory TeamScreenState.initial() {
    return TeamScreenState(teamMembers: []);
  }
  TeamScreenState copyWith({List<TeamMember>? teamMembers}) {
    return TeamScreenState(teamMembers: teamMembers ?? this.teamMembers);
  }
  
}