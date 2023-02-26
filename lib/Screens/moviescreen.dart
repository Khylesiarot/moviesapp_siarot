import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_svg/svg.dart';

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

  const MovieDetailScreen({Key? key,  required this.movieName,  required this.moviePoster, required this.movieReleaseYear, required this.movieCategory, required this.movieDuration, required this.movieRating, required this.movieSinopsis, required this.movieCast}) : super(key: key);

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
                decoration:  BoxDecoration(
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
                      onTap: (){Navigator.pop(context);},
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
              child:  Align(
                      alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight * .45,
                    ),
                       SizedBox(
                        child:  Text(
                                widget.movieName!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Constants.wht,
                                ),
                              ),
                                         ),
              
                       SizedBox(
                              height: screenHeight <= 667 ? 10 : 20,
                            ),
                            SizedBox(
                              child: Text(
                                "${widget.movieReleaseYear!}•${widget.movieCategory!}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Constants.wht.withOpacity(
                                    0.75,
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(
                            height: 20,
                          ),
                          RatingBar.builder(
                            allowHalfRating: true,
                            itemSize: 14,
                            initialRating: double.parse(widget.movieRating!),
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding:
                                const EdgeInsets.symmetric(horizontal: 1),
                            itemBuilder: (context, index) => const Icon(
                              Icons.star,
                              color: Constants.yllw,
                            ),
                            onRatingUpdate: (rating) {
                            },
                            unratedColor: Constants.wht,
                          ),

                          const SizedBox(
                            height: 20,
                          ),
                         
                       SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                child: Text(
                                  widget.movieSinopsis!,
                                   textAlign: TextAlign.center,
                                maxLines: screenHeight <= 667 ? 2 : 6,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Constants.wht.withOpacity(
                                    0.75,
                                  ),
                                )
                                ),
                              ),
                            ),
                            SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Container(
                      height: 2.5,
                      width: screenWidth * 0.8,
                      color: Constants.wht.withOpacity(0.15),
                    ),
                    
                      
              
                  ],
                ),
              )
            )
            
                      ],
        ),
      ),
    );
  }
}
