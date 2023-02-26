import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:moviesapp_siarot/templates/moviecast.dart';
import 'package:moviesapp_siarot/templates/moviedetails.dart';

import '../constants.dart';

class MovieDetailScreen extends StatefulWidget {
  final String? movieName;
  final String? moviePoster;
  final String? movieReleaseYear;
  final String? movieCategory;
  final String? movieDuration;
  final String? movieRating;
  final String? movieSinopsis;
  final List<String>? movieCast;

  const MovieDetailScreen(
      {Key? key,
      required this.movieName,
      required this.moviePoster,
      required this.movieReleaseYear,
      required this.movieCategory,
      required this.movieDuration,
      required this.movieRating,
      required this.movieSinopsis,
      required this.movieCast})
      : super(key: key);

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.black,
              Color.fromARGB(255, 7, 7, 7),
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight * 0.55,
                width: screenWidth,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.moviePoster!),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: screenHeight * 0.55,
                width: screenWidth,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withOpacity(0.001),
                      Colors.black.withOpacity(0.05),
                      Colors.black,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 44,
                        width: 44,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Constants.blck.withOpacity(.05),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(width: 3, color: Constants.wht),
                        ),
                        child: SvgPicture.asset(
                          'assets/svg/icon-back.svg',
                        ),
                      ),
                    ),
                    Container(
                      height: 44,
                      width: 44,
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Constants.blck.withOpacity(.05),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(width: 3, color: Colors.white),
                      ),
                      child: SvgPicture.asset('assets/svg/icon-menu.svg'),
                    ),
                  ],
                ),
              ),
            ),
            SafeArea(
                child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: screenHeight * .40,
                  ),
                  MovieDetails(
                    movieName: widget.movieName,
                    movieReleaseYear: widget.movieReleaseYear,
                    movieCategory: widget.movieCategory,
                    movieDuration: widget.movieDuration,
                    movieRating: widget.movieRating,
                    movieSinopsis: widget.movieSinopsis,
                    screenHeight: screenWidth,
                    screenWidth: screenWidth,
                  ),
                  MovieCast(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      movieCast: widget.movieCast)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
