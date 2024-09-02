import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBlurEffect extends StatelessWidget {
  const CustomBlurEffect({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
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
                width: 100,
                height: 200,
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
                    width: 100,
                    height: 100,
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
                    width: 100,
                    height: 100,
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
