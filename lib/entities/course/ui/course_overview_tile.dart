import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

class CourseOverviewTile extends StatelessWidget {
  const CourseOverviewTile({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.01),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: screenWidth * 0.015),
          Text(title),
        ],
      ),
    );
  }
}
