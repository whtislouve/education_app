import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/common_blur_effect/custom_blur_effect.dart';

class Walkthrough extends StatelessWidget {
  final String title;
  final String decription;
  final AssetGenImage walkthroughPersonImage;
  const Walkthrough(
      {super.key,
      required this.title,
      required this.decription,
      required this.walkthroughPersonImage});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 400,
                height: 500,
                child: Assets.walkthrough.walkthroughPattern
                    .image(fit: BoxFit.fill),
              ),
              const CustomBlurEffect(),
              walkthroughPersonImage.image(),
            ],
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              decription,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
