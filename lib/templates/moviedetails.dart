import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants.dart';

class MovieDetails extends StatefulWidget {
  final double? screenHeight;
  final double? screenWidth;
  final String? movieName;
  final String? movieReleaseYear;
  final String? movieCategory;
  final String? movieDuration;
  final String? movieRating;
  final String? movieSinopsis;

  const MovieDetails({
    Key? key,
    required this.movieName,
    required this.movieReleaseYear,
    required this.movieCategory,
    required this.movieDuration,
    required this.movieRating,
    required this.movieSinopsis,
    this.screenHeight,
    this.screenWidth,
  }) : super(key: key);

  @override
  State<MovieDetails> createState() => _MovieDetails();
}

class _MovieDetails extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Text(
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
          height: widget.screenHeight! <= 667 ? 10 : 20,
        ),
        SizedBox(
          child: Text(
            "${widget.movieReleaseYear!}•${widget.movieCategory!}•${widget.movieReleaseYear}",
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
          itemPadding: const EdgeInsets.symmetric(horizontal: 1),
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: Constants.yllw,
          ),
          onRatingUpdate: (rating) {},
          unratedColor: Constants.wht,
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(widget.movieSinopsis!,
                textAlign: TextAlign.center,
                maxLines: 4,
                style: TextStyle(
                  fontSize: 14,
                  color: Constants.wht.withOpacity(
                    0.75,
                  ),
                )),
          ),
        ),
        SizedBox(
          height: widget.screenHeight! * 0.05,
        ),
        Container(
          height: 2.5,
          width: widget.screenWidth! * 0.8,
          color: Constants.wht.withOpacity(0.15),
        ),
      ],
    );
  }
}
