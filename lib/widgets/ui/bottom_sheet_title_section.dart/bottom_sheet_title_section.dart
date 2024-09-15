import 'package:flutter/material.dart';

class BottomSheetTitleSection extends StatelessWidget {
  const BottomSheetTitleSection({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 20, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontSize: 18),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Done",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 16, color: Theme.of(context).colorScheme.primary),
              ))
        ],
      ),
    );
  }
}
