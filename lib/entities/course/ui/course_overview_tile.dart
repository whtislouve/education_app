import 'package:flutter/material.dart';

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
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 15),
          Text(title),
        ],
      ),
    );
  }
}
