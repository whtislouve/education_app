import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:education_app/shared/ui/common_button/common_button.dart';
import 'package:education_app/shared/ui/custom_radio_list_tile/custom_radio_list_tile.dart';
import 'package:education_app/shared/ui/screen_size_provider/screen_size_model.dart';
import 'package:education_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

@RoutePage()
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});
  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

enum ForgotPasswordRadioOptions { email, phoneNumber }

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  ForgotPasswordRadioOptions _radioListTileGroupValue =
      ForgotPasswordRadioOptions.email;

  _selectRadioListTile(ForgotPasswordRadioOptions radioListTileValue) {
    //radio list tile count as selected or active, if value == groupValue
    setState(() {
      _radioListTileGroupValue = radioListTileValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = Provider.of<ScreenSizeModel>(context);
    final screenWidth = mediaQuery.width;
    final screenHeight = mediaQuery.height;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.only(
          top: screenWidth * 0.06,
          left: screenWidth * 0.06,
          right: screenWidth * 0.06,
        ),
        child: LayoutBuilder(builder: (context, constraints) {
          return SizeInheritedWidget(
            maxWidth: constraints.maxWidth,
            maxHeight: constraints.maxHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Forgot password",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: screenHeight * 0.025),
                const Text(
                  "Please select option to send a link reset password",
                ),
                SizedBox(height: screenHeight * 0.025),
                CustomRadioListTile(
                  title: "Send to your email",
                  description:
                      "Link reset will be sent to your email address registered",
                  value: ForgotPasswordRadioOptions.email,
                  groupValue: _radioListTileGroupValue,
                  onRadioButtonPress: () =>
                      _selectRadioListTile(ForgotPasswordRadioOptions.email),
                ),
                SizedBox(
                  height: screenHeight * 0.02,
                ),
                CustomRadioListTile(
                  title: "Send to your phone number",
                  description:
                      "Link reset will be sent to your phone number registered",
                  value: ForgotPasswordRadioOptions.phoneNumber,
                  groupValue: _radioListTileGroupValue,
                  onRadioButtonPress: () => _selectRadioListTile(
                      ForgotPasswordRadioOptions.phoneNumber),
                ),
                SizedBox(height: screenHeight * 0.025),
                CommonButton(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  actionOnPress: () {
                    if (_radioListTileGroupValue ==
                        ForgotPasswordRadioOptions.email)
                      print("Send email");
                    else
                      print('Send to phone');
                  },
                  child: const Text(
                    'Send link',
                  ),
                ),
                SizedBox(height: screenHeight * 0.025),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Didn't recieve link? "),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      child: const Text("Resend link"),
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
