import 'package:flutter/material.dart';
import 'package:travel_app/shared/ui/size_inherited_widget/size_inherited_widget.dart';

class CustomBlurEffect extends StatelessWidget {
  const CustomBlurEffect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sizeData = SizeInheritedWidget.of(context);
    if (sizeData == null) {
      return const Text("No size data of Layout");
    }
    final maxWidth = sizeData.maxWidth;
    final maxHeight = sizeData.maxHeight;
    return SizedBox(
      width: maxWidth * 0.4,
      height: maxHeight * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: maxWidth * 0.15,
            height: maxHeight * 0.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color.fromRGBO(122, 151, 255, 0.03),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromRGBO(122, 151, 255, 0.2),
                    spreadRadius: 25,
                    blurRadius: 25),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: maxWidth * 0.15,
                height: maxHeight * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(107, 184, 255, 0.07),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(107, 184, 255, 0.2),
                        spreadRadius: 40,
                        blurRadius: 40),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: maxWidth * 0.15,
                    height: maxHeight * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromRGBO(127, 48, 255, 0.01),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(127, 48, 255, 0.2),
                            spreadRadius: 25,
                            blurRadius: 25),
                      ],
                    ),
                  ),
                  Container(
                    width: maxWidth * 0.15,
                    height: maxHeight * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color.fromRGBO(255, 72, 128, 0.01),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(255, 72, 128, 0.2),
                          spreadRadius: 25,
                          blurRadius: 25,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
