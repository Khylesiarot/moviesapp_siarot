import 'dart:ui';

import 'package:flutter/material.dart';
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
          children: [Positioned(
            top: screenHeight * .1,
            left: screenWidth * .12,
            child: Container(
              height: 166,
              width: 166,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.pnk,
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                sigmaX: 75,
                sigmaY: 75,              ),
              child: Container(
                height: 166,
                width: 166,
                color: Colors.transparent,
              ), ),
          )),
          Positioned(
            top: screenHeight * .4,
            left: screenWidth * .55,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Constants.grn,
              ),
              child: BackdropFilter(filter: ImageFilter.blur(
                sigmaX: 80,
                sigmaY: 80,
              ),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.transparent,
              ), ),
          ))],
        ),
      ),
    );
  }
}
