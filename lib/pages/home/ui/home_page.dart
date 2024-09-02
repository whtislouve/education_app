import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/explore/ui/explore_page.dart';
import 'package:travel_app/pages/my_course/ui/my_course_page.dart';
import 'package:travel_app/pages/profile/ui/profile_page.dart';
import 'package:travel_app/pages/wishlist/ui/wishlist_page.dart';
import 'package:travel_app/shared/ui/custom_bottom_tab_bar/custom_bottom_tab_bar.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController controller = PageController();
  final tabs = [ExplorePage(), MyCoursePage(), WishlistPage(), ProfilePage()];
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: tabs,
        onPageChanged: (index) {
          currentPageIndex = index;
        },
      ),
      bottomNavigationBar: CustomBottomTabBar(
        controller: controller,
        currentTabIndex: currentPageIndex,
      ),
    );
  }
}
