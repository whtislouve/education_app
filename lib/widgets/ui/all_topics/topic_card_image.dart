import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:education_app/gen/assets.gen.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

class TopicCardImage extends StatelessWidget {
  const TopicCardImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Container(
      width: screenWidth * 0.15,
      height: screenWidth * 0.15,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(screenWidth * 0.01),
          border: Border.all(
            width: 1,
            color: const Color.fromRGBO(235, 239, 255, 1),
          )),
      child: SvgPicture.asset(
        image,
        width: screenHeight * 0.045,
        height: screenHeight * 0.045,
        // fit: BoxFit.scaleDown,
        // theme: SvgTheme(fontSize: screenHeight * 0.01),
        // fit: BoxFit.fitWidth,
      ),
    );
  }
}
