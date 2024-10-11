import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/shared/ui/common_button/common_button.dart';
import 'package:travel_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:travel_app/widgets/ui/profile/avatar_section.dart';
import 'package:travel_app/widgets/ui/profile/profile_header.dart';
import 'package:travel_app/widgets/ui/profile/profile_menu_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => false;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    super.build(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: screenWidth * 0.025,
              top: screenHeight * 0.07,
              right: screenWidth * 0.025),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Profile", style: Theme.of(context).textTheme.titleLarge),
              const ProfileHeader(),
              Text(
                "Settings",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: screenHeight * 0.018, color: Colors.grey),
              ),
              const ProfileMenuTile(title: "Edit Profile"),
              const ProfileMenuTile(title: "Account Security"),
              const ProfileMenuTile(title: "Change Language"),
              const ProfileMenuTile(title: "Close Account"),
              SizedBox(height: screenHeight * 0.05),
              Text(
                "Support",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: screenHeight * 0.018, color: Colors.grey),
              ),
              const ProfileMenuTile(title: "About Curso Academy"),
              const ProfileMenuTile(title: "Help and Support"),
              const ProfileMenuTile(title: "Share Brainy App"),
              CommonButton(
                buttonWidth: screenWidth,
                buttonHeight: screenHeight * 0.05,
                sideColor: BorderSide(
                    color: Colors.white, width: 0, style: BorderStyle.none),
                foregroundColor: Colors.red,
                backgroundColor: Colors.white,
                actionOnPress: () {},
                child: Text("Sign out"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
