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
                SizedBox(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(40/ 360),
                      child: Container(
                        decoration: BoxDecoration(
                            border: GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                Constants.pnk,
                                Constants.pnk.withOpacity(.07),
                                Constants.grn.withOpacity(.1),
                                Constants.grn,
                              ]),
                              width: 4,
                            ),
                            borderRadius: BorderRadius.circular(200)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Container(
                            height: 320,
                            width: 320,
                            decoration: const BoxDecoration(
                              color: Colors.transparent,
                              
                            ),
                            child: const FittedBox(
                              fit: BoxFit.cover,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 60,
                                  top: 30,
                                  bottom: 10,
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
                    height: screenHeight * 0.05,
                  ),

                     Text(
                    'Watch movies in\nVirtual Reality',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.kWhiteColor.withOpacity(0.85),
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
                      color: Constants.kWhiteColor.withOpacity(0.75),
                      fontSize: screenHeight <= 667 ? 12 : 16,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),

                 

              Container(
               decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(-30, 0),
                    color: Constants.pnk.withOpacity(.5),
                    blurRadius: 30,
                    spreadRadius: -30,
                  ),
                   BoxShadow(
                    offset: const Offset(30, 0),
                    color: Constants.grn.withOpacity(.5),
                    blurRadius: 30,
                    spreadRadius: -30,
                  ),

                ]
               ), 
                child: Container(
                  decoration: BoxDecoration(
                      // ignore: prefer_const_constructors
                      border: GradientBoxBorder(
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomRight,
                          colors: [
                          Constants.pnk,
                          Constants.grn,
                        ]),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(200)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Container(
                      alignment: Alignment.center,
                      height: 38,
                      width: 160,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        
                      ),
                      child: const Text(
                        'Sign up',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                     
                    ),
                  ),
                )),

                   SizedBox(
                    height: screenHeight * 0.09,
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
                                : Constants.kWhiteColor.withOpacity(0.2),
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
