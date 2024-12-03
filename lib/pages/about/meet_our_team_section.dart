import 'package:flutter/material.dart';

class MeetOurTeamSection extends StatelessWidget {
  const MeetOurTeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      color: const Color(0xFFFFFFFF),
      child: const Column(
        children: [
          Text(
            "Meet Our Team",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xFF252B42),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Problems trying to resolve the conflict between\nthe two major realms of Classical physics: Newtonian mechanics",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF737373),
            ),
          ),
          SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TeamMember(
                imageUrl: "assets/images/team_1_user_1.png",
                name: "Anna Johnson",
                profession: "Designer",
              ),
              TeamMember(
                imageUrl: "assets/images/team_1_user_2.png",
                name: "John Doe",
                profession: "Developer",
              ),
              TeamMember(
                imageUrl: "assets/images/team_1_user_3.png",
                name: "Emily Davis",
                profession: "Manager",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TeamMember extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String profession;

  const TeamMember({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.profession,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 230,
          width: 330,
          child: Image.asset(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xFF252B42),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          profession,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Color(0xFF737373),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/facebook.png",
                width: 24,
                height: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/instagram.png",
                width: 24,
                height: 24,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/icons/twitter.png",
                width: 24,
                height: 24,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
