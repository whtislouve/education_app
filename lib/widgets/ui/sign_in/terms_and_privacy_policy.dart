import 'package:flutter/material.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class TermsAndPrivacyPolicy extends StatelessWidget {
  const TermsAndPrivacyPolicy({super.key});
  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }

    final maxHeight = sizeData.maxHeight;
    return Container(
      margin: EdgeInsets.only(top: maxHeight * 0.04),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("By using our services you are agreeing to our"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: maxHeight * 0.05,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text('Terms'),
                ),
              ),
              const Text('and  '),
              SizedBox(
                height: maxHeight * 0.05,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: const Text("Privacy Policy"),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
