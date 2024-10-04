import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';
import 'package:travel_app/shared/ui/common_blur_effect/custom_blur_effect.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

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
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data info");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                width: maxWidth,
                height: maxHeight * 0.65,
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
            margin: EdgeInsets.only(top: maxHeight * 0.03),
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
