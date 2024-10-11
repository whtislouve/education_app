import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
import 'package:travel_app/widgets/ui/profile/avatar_gradient_arc.dart';

class AvatarSection extends StatelessWidget {
  const AvatarSection({super.key});
  @override
  Widget build(BuildContext context) {
    // final mediaQuery = Provider.of<ScreenSizeModel>(context);
    // final screenWidth = mediaQuery.width;
    // final screenHeight = mediaQuery.height;
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: maxHeight * 0.5,
          height: maxHeight * 0.6,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: Image.asset("assets/explore/popular_course_image2.png")
                    .image,
                fit: BoxFit.fill,
              )),
        ),
        CustomPaint(
          painter: AvatarGradientArc(),
          size: Size(maxHeight * 0.56, maxHeight * 0.56),
        )
      ],
    );
  }
}
