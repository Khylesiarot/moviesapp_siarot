import 'package:flutter/material.dart';
import 'package:moviesapp_siarot/templates/moviecard.dart';

import '../constants.dart';
import '../data.dart';

class UpcomingMovieCards extends StatelessWidget {
  const UpcomingMovieCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: upcomingMovies.length,
        itemBuilder: (context, index) {
          String mask;
          if (index == 0) {
            mask = Constants.firstCard;
          } else if (index == upcomingMovies.length - 1) {
            mask = Constants.lastCard;
          } else {
            mask = Constants.centerCard;
          }
          return GestureDetector(
            child: Container(
              margin: EdgeInsets.only(
                left: index == 0 ? 20 : 0,
              ),
              height: 160,
              width: 142,
              child: MovieCard(
                asset: upcomingMovies[index].moviePoster,
                mask: mask,
              ),
            ),
          );
        },
      ),
    );
  }
}
