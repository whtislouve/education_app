import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/darkening_gradient/darkening_gradient.dart';

class BackgroundImageHeaderSection extends StatelessWidget {
  const BackgroundImageHeaderSection({
    super.key,
    required this.backgroundImage,
    this.addBookMarkIcon = false,
    this.titlePosition,
    required this.titleWidget,
  });
  final AssetGenImage backgroundImage;
  final bool addBookMarkIcon;
  final double? titlePosition;
  final Widget titleWidget;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 304,
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
          padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
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
                  )),
              addBookMarkIcon
                  ? IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
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
