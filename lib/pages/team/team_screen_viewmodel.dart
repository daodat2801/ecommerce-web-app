import 'package:ecommerce_web_app/data/team_member_repository.dart';
import 'package:ecommerce_web_app/models/team_member.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



class TeamScreenViewmodel extends StateNotifier<TeamState> {
  final TeamMemberRepository _repository = TeamMemberRepository();

  TeamScreenViewmodel() : super(TeamState.initial()) {
    fetchTeamMembers();
  }

  Future<void> fetchTeamMembers() async {
    final teamMembers = await _repository.fetchTeamMembers();
    state = TeamState(teamMembers: teamMembers);
  }
}


class TeamState {
  final List<TeamMember> teamMembers;

  TeamState({required this.teamMembers});

  factory TeamState.initial() {
    return TeamState(teamMembers: []);
  }
}
