import 'package:ecommerce_web_app/commons/constants/app_color.dart';
import 'package:ecommerce_web_app/commons/constants/app_img.dart';
import 'package:ecommerce_web_app/services/about_us_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_web_app/commons/constants/app_svg.dart';

class MeetOurTeamSection extends ConsumerWidget {
  const MeetOurTeamSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final meetOurTeamAsync = ref.watch(meetOurTeamProvider);

    return meetOurTeamAsync.when(
      data: (meetOurTeam) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          color: AppColors.white,
          child: Column(
            children: [
              Text(
                meetOurTeam.title,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimaryColor,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                meetOurTeam.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textMediumGrayColor,
                ),
              ),
              const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: meetOurTeam.teamMembers.map((member) {
                  return TeamMember(
                    imageUrl: AppImage.team1User3,
                    name: member.username,
                    profession: member.profession,
                  );
                }).toList(),
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) =>
          const Center(child: Text('Something went wrong')),
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
            SvgPicture.asset(AppSvgs.icFbBlue, height: 16, width: 16),
            const SizedBox(width: 5),
            SvgPicture.asset(AppSvgs.icIgBlue, height: 16, width: 16),
            const SizedBox(width: 5),
            SvgPicture.asset(AppSvgs.icTwBlue, height: 16, width: 16),
          ],
        ),
      ],
    );
  }
}
