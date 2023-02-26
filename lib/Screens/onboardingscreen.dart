import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moviesapp_siarot/components/intropic.dart';
import 'package:moviesapp_siarot/components/signupbutton.dart';
import 'package:moviesapp_siarot/constants.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.blck,
      extendBody: true,
      body: SizedBox(
        width: screenWidth,
        height: screenHeight,
        child: Stack(
          children: [
            Positioned(
                top: screenHeight * .1,
                left: screenWidth * .12,
                child: Container(
                  height: 166,
                  width: 166,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.pnk,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 50,
                      sigmaY: 50,
                    ),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            Positioned(
                top: screenHeight * .251,
                left: screenWidth * .55,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.grn,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 80,
                      sigmaY: 80,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                )),
            SafeArea(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: screenHeight * .07,
                ),
               const IntroPicture(),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Text(
                  'Watch movies in\nVirtual Reality',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Constants.wht.withOpacity(0.85),
                    fontSize: screenHeight <= 667 ? 17 : 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Text(
                  'Download and watch offline\nwherever you are',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Constants.wht.withOpacity(0.75),
                    fontSize: screenHeight <= 667 ? 12 : 16,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),
                const SignUpButton(),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) {
                      return Container(
                        height: 7,
                        width: 7,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == 0
                              ? Constants.grn
                              : Constants.wht.withOpacity(0.2),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
