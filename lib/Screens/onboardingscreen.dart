import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
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
                top: screenHeight * .4,
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
                      sigmaX: 60,
                      sigmaY: 60,
                    ),
                    child: Container(
                      height: 120,
                      width: 120,
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
                SizedBox(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(35 / 360),
                      child: Container(
                        decoration: BoxDecoration(
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Constants.pnk,
                                Constants.pnk.withOpacity(.0),
                                Constants.grn.withOpacity(.1),
                                Constants.grn,
                              ]),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(200)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Container(
                            height: 270,
                            width: 270,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              
                            ),
                            child: const FittedBox(
                              fit: BoxFit.cover,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 120,
                                  top: 20,
                                  bottom: 30,
                                ),
                                child: RotationTransition(
                                  turns:  AlwaysStoppedAnimation(325 / 360),
                                  child: Image(image: AssetImage('assets/image 81.png')),
                                  ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                 SizedBox(
                    height: screenHeight * 0.09,
                  ),


              ],
            ))
          ],
        ),
      ),
    );
  }
}
