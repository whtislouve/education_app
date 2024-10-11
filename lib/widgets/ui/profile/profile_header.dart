import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';
import 'package:education_app/widgets/ui/profile/avatar_section.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;

    return SizedBox(
      width: screenWidth,
      height: screenHeight * 0.3,
      child: LayoutBuilder(builder: (context, constraints) {
        return SizeInheritedWidget(
          maxWidth: constraints.maxWidth,
          maxHeight: constraints.maxHeight,
          child: Row(
            children: [
              const AvatarSection(),
              SizedBox(width: screenWidth * 0.1),
              SizedBox(
                width: constraints.maxWidth * 0.5,
                height: constraints.maxHeight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nirmala Azalea",
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                          fontSize: screenHeight * 0.03),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.02),
                    Text(
                      "nirmala@gmail.com",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                          ?.copyWith(color: Colors.grey),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.05),
                    Container(
                      width: constraints.maxWidth * 0.5,
                      height: constraints.maxHeight * 0.3,
                      padding:
                          EdgeInsets.only(left: constraints.maxWidth * 0.05),
                      decoration: const BoxDecoration(
                        border: Border(
                          left: BorderSide(color: Colors.grey),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "0",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenHeight * 0.03),
                          ),
                          SizedBox(height: constraints.maxHeight * 0.02),
                          Text(
                            "Course Joined",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: screenHeight * 0.02),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
