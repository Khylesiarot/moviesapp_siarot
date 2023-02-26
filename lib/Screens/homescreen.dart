import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moviesapp_siarot/components/bottomnavbar.dart';
import 'package:moviesapp_siarot/components/floatingButton.dart';
import 'package:moviesapp_siarot/components/newmovies.dart';
import 'package:moviesapp_siarot/components/searchbar.dart';
import 'package:moviesapp_siarot/components/upcomingmovies.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Constants.blck,
        extendBody: true,
        body: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            children: [
              Positioned(
                top: -73,
                left: -12,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.grn.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 50,
                      sigmaY: 50,
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.4,
                right: -88,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.pnk.withOpacity(0.8),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 100,
                      sigmaY: 100,
                    ),
                    child: Container(
                      height: 120,
                      width: 120,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -73,
                left: -12,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Constants.cyn.withOpacity(0.8),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 100,
                      sigmaY: 100,
                    ),
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              SafeArea(
                  bottom: false,
                  child: ListView(
                    primary: true,
                    children: [
                       SizedBox(
                        height: screenHeight * .06,
                      ),
                      const Text(
                        'What would you\nlike to watch?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          color: Constants.wht,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                       SizedBox(
                        height: screenHeight * .04,
                      ),
                      const SearchFieldWidget(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                      ),
                       SizedBox(
                        height: screenHeight * .04,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'New movies',
                          style: TextStyle(
                            color: Constants.wht,
                            fontSize: 17,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: screenHeight * .04,
                      ),
                      const NewMovieCards(),
                       SizedBox(
                        height: screenHeight * .04,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Upcoming movies',
                          style: TextStyle(
                            color: Constants.wht,
                            fontSize: 17,
                          ),
                        ),
                      ),
                       SizedBox(
                        height: screenHeight * .04,
                      ),
                      const UpcomingMovieCards(),
                      SizedBox(
                        height: screenHeight * .04,
                      ),
                    ],
                  ))
            ],
          ),
        ),
        floatingActionButton: const CenterButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: const BottomNavBar());
  }
}
