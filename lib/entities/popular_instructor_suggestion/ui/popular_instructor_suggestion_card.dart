import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/shared/ui/darkening_gradient/darkening_gradient.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';

class PopularInstructorSuggestionCard extends StatelessWidget {
  const PopularInstructorSuggestionCard({
    super.key,
    required this.subjectTitle,
    required this.subjectDescription,
    required this.subjectTeacher,
    required this.cardImage,
  });
  final String subjectTitle;
  final String subjectDescription;
  final String subjectTeacher;
  final ImageProvider<Object> cardImage;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Container(
      width: screenWidth * 0.65,
      height: screenHeight * 0.43,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.vertical(
              top: Radius.circular(25), bottom: Radius.circular(25)),
          image: DecorationImage(
              fit: BoxFit.none,
              image: cardImage,
              alignment: Alignment.topCenter)),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return DarkeningGradient(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            borderRadiusGeometry: BorderRadiusDirectional.vertical(
                top: Radius.circular(25), bottom: Radius.circular(25)),
            colors: const [
              Color.fromARGB(0, 158, 158, 158),
              Color.fromARGB(82, 0, 0, 0),
            ],
            child: Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              padding: EdgeInsets.only(
                left: constraints.maxWidth * 0.065,
                right: constraints.maxWidth * 0.065,
                bottom: constraints.maxHeight * 0.044,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    subjectTitle,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(color: Colors.amber[800]),
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.013,
                  ),
                  Text(
                    subjectDescription,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: constraints.maxHeight * 0.046,
                          height: 1.05,
                        ),
                    maxLines: 3,
                  ),
                  SizedBox(
                    height: constraints.maxHeight * 0.013,
                  ),
                  Text(
                    subjectTeacher,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: Colors.white,
                          fontSize: constraints.maxHeight * 0.04,
                        ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
