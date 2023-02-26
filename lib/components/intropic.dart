import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../constants.dart';

class IntroPicture extends StatelessWidget{
  const IntroPicture({super.key});
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: RotationTransition(
                        turns: const AlwaysStoppedAnimation(40 / 360),
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
                                    turns: AlwaysStoppedAnimation(325 / 360),
                                    child: Image(
                                        image:
                                            AssetImage('assets/image 81.png')),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
  }
  
}