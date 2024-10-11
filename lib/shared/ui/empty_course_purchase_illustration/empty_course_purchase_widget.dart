import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

class EmptyCoursePurchaseWidget extends StatelessWidget {
  const EmptyCoursePurchaseWidget({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Container(
      width: screenWidth * 0.5,
      height: screenHeight * 0.25,
      // alignment: Alignment.center,
      child: LayoutBuilder(builder: (context, constraints) {
        return Stack(
          children: [
            SvgPicture.asset('assets/my_course/my_course_ellipse_image.svg'),
            Container(
              width: constraints.maxWidth * 0.4,
              height: constraints.maxHeight * 0.4,
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                'assets/my_course/my_course_cloud_image.svg',
                // width: constraints.maxHeight * 0.05,
                // height: constraints.maxHeight * 0.05,
              ),
            ),
            Container(
              width: constraints.maxWidth * 0.8,
              height: constraints.maxHeight * 0.8,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                  'assets/my_course/my_course_folder_image.svg'),
            ),
            Container(
              margin: EdgeInsets.only(
                left: constraints.maxWidth * 0.65,
                top: constraints.maxHeight * 0.1,
              ),
              alignment: Alignment.center,
              width: constraints.maxWidth * 0.2,
              height: constraints.maxHeight * 0.2,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(233, 236, 244, 1),
                  borderRadius: BorderRadius.circular(25)),
              child: Text(
                "0",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 14),
              ),
            )
          ],
        );
      }),
    );
  }
}
