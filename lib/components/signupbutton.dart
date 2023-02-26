import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../constants.dart';
 
class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
                      decoration: BoxDecoration(boxShadow: [
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
                      ]),
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
                              child: MaterialButton(
                                onPressed: () {
                                   Navigator.pushNamed(context, "home");
                                },
                                child: const Text(
                                  'Sign up',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                        ),
                      ));
  }
  
}