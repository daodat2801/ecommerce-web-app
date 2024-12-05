class AboutUs {
  final String title;
  final String description;
  final String button;
  final String placeholderText;

  AboutUs({
    required this.title,
    required this.description,
    required this.button,
    required this.placeholderText,
  });

  factory AboutUs.fromJson(Map<String, dynamic> json) {
    return AboutUs(
      title: json['title'],
      description: json['description'],
      button: json['button'],
      placeholderText: json['placeholderText'],
    );
  }
}

class Statistics {
  final String happyCustomers;
  final String monthlyVisitors;
  final String countriesWorldwide;
  final String topPartners;

  Statistics({
    required this.happyCustomers,
    required this.monthlyVisitors,
    required this.countriesWorldwide,
    required this.topPartners,
  });

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return Statistics(
      happyCustomers: json['happyCustomers'],
      monthlyVisitors: json['monthlyVisitors'],
      countriesWorldwide: json['countriesWorldwide'],
      topPartners: json['topPartners'],
    );
  }
}

class Video {
  final String image;

  Video({
    required this.image,
  });

  factory Video.fromJson(Map<String, dynamic> json) {
    return Video(
      image: json['image'],
    );
  }
}

class MeetOurTeam {
  final String title;
  final String description;
  final List<TeamMember> teamMembers;

  MeetOurTeam({
    required this.title,
    required this.description,
    required this.teamMembers,
  });

  factory MeetOurTeam.fromJson(Map<String, dynamic> json) {
    var teamList = json['teamMembers'] as List;
    List<TeamMember> teamMembers =
        teamList.map((e) => TeamMember.fromJson(e)).toList();

    return MeetOurTeam(
      title: json['title'],
      description: json['description'],
      teamMembers: teamMembers,
    );
  }
}

class TeamMember {
  final String username;
  final String profession;

  TeamMember({
    required this.username,
    required this.profession,
  });

  factory TeamMember.fromJson(Map<String, dynamic> json) {
    return TeamMember(
      username: json['username'],
      profession: json['profession'],
    );
  }
}

class Partners {
  final List<String> logos;

  Partners({
    required this.logos,
  });

  factory Partners.fromJson(Map<String, dynamic> json) {
    var logosList = json['logos'] as List;
    List<String> logos = logosList.map((e) => e.toString()).toList();

    return Partners(
      logos: logos,
    );
  }
}

class CallToAction {
  final String title;
  final String subtitle;
  final String description;
  final String button;

  CallToAction({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.button,
  });

  factory CallToAction.fromJson(Map<String, dynamic> json) {
    return CallToAction(
      title: json['title'],
      subtitle: json['subtitle'],
      description: json['description'],
      button: json['button'],
    );
  }
}
