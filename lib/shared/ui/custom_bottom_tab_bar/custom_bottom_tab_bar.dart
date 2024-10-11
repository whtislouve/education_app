import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/gen/assets.gen.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';

class CustomBottomTabBar extends StatefulWidget {
  CustomBottomTabBar({
    super.key,
    required this.controller,
    required this.currentTabIndex,
  });
  PageController controller;
  int currentTabIndex;

  @override
  State<CustomBottomTabBar> createState() => _CustomBottomTabBarState();
}

class _CustomBottomTabBarState extends State<CustomBottomTabBar> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.12,
      // padding: EdgeInsets.only(top: screenHeight * 0.01),
      decoration:
          BoxDecoration(border: Border(top: BorderSide(color: Colors.grey))),
      child: BottomNavigationBar(
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        onTap: (index) {
          widget.controller.animateToPage(index,
              duration: const Duration(microseconds: 1000),
              curve: Curves.linear);
          setState(() {
            widget.currentTabIndex = index;
          });
        },
        currentIndex: widget.currentTabIndex,
        items: [
          BottomNavigationBarItem(
              activeIcon: Assets.bottomTabBar.exploreActiveIcon.image(),
              icon: Assets.bottomTabBar.exploreInactiveIcon.image(),
              label: "Explore"),
          BottomNavigationBarItem(
              activeIcon: Assets.bottomTabBar.myCourseActiveIcon.image(),
              icon: Assets.bottomTabBar.myCourseInactiveIcon.image(),
              label: "My Course"),
          BottomNavigationBarItem(
              activeIcon: Assets.bottomTabBar.wishlistActiveIcon.image(),
              icon: Assets.bottomTabBar.wishlistInactiveIcon.image(),
              label: "Wishlist"),
          BottomNavigationBarItem(
              activeIcon: Assets.bottomTabBar.profileActiveIcon.image(),
              icon: Assets.bottomTabBar.profileInactiveIcon.image(),
              label: "Profle"),
        ],
        unselectedLabelStyle:
            const TextStyle(color: Color.fromARGB(178, 40, 40, 40)),
        selectedLabelStyle: const TextStyle(color: Colors.black),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        useLegacyColorScheme: false,
      ),
    );
  }
}
