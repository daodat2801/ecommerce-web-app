class TeamMember {
  final String username;
  final String profession;
  final List<String> socialMedia;

  TeamMember({
    required this.username,
    required this.profession,
    required this.socialMedia,
  });

  // Factory constructor
  factory TeamMember.fromJson(Map<String, dynamic> json) {
    return TeamMember(
      username: json['username'] ?? '',
      profession: json['profession'] ?? '',
      socialMedia: json['social_media'] != null
          ? List<String>.from(json['social_media'])
          : [],
    );
  }

  List<Object> get props => [username, profession, socialMedia];
}