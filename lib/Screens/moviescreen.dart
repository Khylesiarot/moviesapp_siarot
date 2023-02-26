import 'package:flutter/material.dart';




class MovieDetailScreen extends StatelessWidget {
  final String? movieName;
  final String? moviePoster;
  final String? movieReleaseYear;
  final String? movieCategory;
  final String? movieDuration;
  final String? movieRating;
  final String? movieSinopsis;
  final List<String>? movieCast;

  const MovieDetailScreen({Key? key,  required this.movieName,  required this.moviePoster, required this.movieReleaseYear, required this.movieCategory, required this.movieDuration, required this.movieRating, required this.movieSinopsis, required this.movieCast}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
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
                decoration:  BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(moviePoster!),
                    
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
                decoration:  BoxDecoration(
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
                      ],
        ),
      ),
    );
  }
}
