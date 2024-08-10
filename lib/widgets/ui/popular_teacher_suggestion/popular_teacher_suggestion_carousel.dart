import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/widgets/ui/popular_teacher_suggestion/popular_teacher_suggestion_card.dart';

class PopularTeacherSuggestionCarousel extends StatelessWidget {
  const PopularTeacherSuggestionCarousel({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: 15),
          PopularTeacherSuggestionCard(
            subjectTitle: "Popular in music",
            subjectDescription: "Complete Guitar Lessons\nSystem-Beginner",
            subjectTeacher: "Alex Siholang",
            cardImage:
                Assets.popularTeachersCarousel.popularTeacherMale.provider(),
          ),
          SizedBox(width: 30),
          PopularTeacherSuggestionCard(
            subjectTitle: "Popular in Personal Development",
            subjectDescription: "Communication Skill Speak\nLike A Leader",
            subjectTeacher: "Susan Anastasya",
            cardImage:
                Assets.popularTeachersCarousel.popularTeacherFemale.provider(),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
