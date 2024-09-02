import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/gen/assets.gen.dart';

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
    return BottomNavigationBar(
      onTap: (index) {
        widget.controller.animateToPage(index,
            duration: Duration(microseconds: 1000), curve: Curves.linear);
        setState(() {
          widget.currentTabIndex = index;
        });
      },
      currentIndex: widget.currentTabIndex,
      items: [
        BottomNavigationBarItem(
            activeIcon: Assets.bottomTabBar.exploreActiveIcon.image(),
            icon: Assets.bottomTabBar.exploreInactiveIcon.image(),
            label: "Explore Page"),
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
      unselectedLabelStyle: TextStyle(color: Color.fromARGB(178, 40, 40, 40)),
      selectedLabelStyle: TextStyle(color: Colors.black),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      useLegacyColorScheme: false,
    );
  }
}
