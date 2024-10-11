import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:education_app/entities/course/models/course_model.dart';
import 'package:education_app/features/wishList/wishListFeatures.dart';

import 'package:education_app/gen/assets.gen.dart';
import 'package:education_app/shared/ui/darkening_gradient/darkening_gradient.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class BackgroundImageHeaderSection extends StatelessWidget {
  const BackgroundImageHeaderSection({
    super.key,
    required this.backgroundImage,
    this.addBookMarkIcon = false,
    this.titlePosition,
    required this.titleWidget,
    required this.course,
  });
  final AssetGenImage backgroundImage;
  final bool addBookMarkIcon;
  final double? titlePosition;
  final Widget titleWidget;
  final CourseModel course;
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Stack(
      children: [
        Container(
          height: maxHeight * 0.67,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: backgroundImage.provider(),
            fit: BoxFit.fitWidth,
          )),
          child: DarkeningGradient(
            gradientBegin: Alignment.topCenter,
            gradienEnd: Alignment.bottomCenter,
            colors: const [
              Color.fromARGB(150, 17, 17, 17),
              Color.fromARGB(0, 200, 200, 200),
              Color.fromARGB(255, 255, 255, 255)
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: maxWidth * 0.015,
            right: maxWidth * 0.015,
            top: maxHeight * 0.08,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    context.router.back();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                    size: maxHeight * 0.08,
                  )),
              addBookMarkIcon
                  ? IconButton(
                      onPressed: () async {
                        await WishListFeatures().addCourseToWishList(
                            course: course,
                            imagePath:
                                'assets/course_detail/all_course_image2.png');
                      },
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: maxHeight * 0.08,
                      ))
                  : const SizedBox()
            ],
          ),
        ),
        Positioned.fill(
          top: titlePosition,
          child: titleWidget,
        )
      ],
    );
  }
}
