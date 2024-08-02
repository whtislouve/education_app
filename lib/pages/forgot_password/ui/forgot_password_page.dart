import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/shared/ui/common_button.dart';
import 'package:travel_app/shared/ui/custom_radio_list_tile.dart';

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
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Forgot password",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            const Text(
              "Please select option to send a link reset password",
            ),
            const SizedBox(height: 30),
            CustomRadioListTile(
              title: "Send to your email",
              description:
                  "Link reset will be sent to your email address registered",
              value: ForgotPasswordRadioOptions.email,
              groupValue: _radioListTileGroupValue,
              onRadioButtonPress: () =>
                  _selectRadioListTile(ForgotPasswordRadioOptions.email),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomRadioListTile(
              title: "Send to your phone number",
              description:
                  "Link reset will be sent to your phone number registered",
              value: ForgotPasswordRadioOptions.phoneNumber,
              groupValue: _radioListTileGroupValue,
              onRadioButtonPress: () =>
                  _selectRadioListTile(ForgotPasswordRadioOptions.phoneNumber),
            ),
            const SizedBox(height: 20),
            CommonButton(
              backgroundColor: Theme.of(context).colorScheme.primary,
              foregroundColor: Theme.of(context).colorScheme.secondary,
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
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Didn't recieve link? "),
                TextButton(
                  onPressed: () {},
                  child: Text("Resend link"),
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
