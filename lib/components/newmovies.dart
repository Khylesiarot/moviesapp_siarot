import 'package:flutter/material.dart';
import 'package:moviesapp_siarot/Screens/moviescreen.dart';

import '../constants.dart';
import '../data.dart';
import '../templates/moviecard.dart';

class NewMovieCards extends StatelessWidget {
  const NewMovieCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: newMovies.length,
        itemBuilder: (context, index) {
          String mask;
          if (index == 0) {
            mask = Constants.firstCard;
          } else if (index == newMovies.length - 1) {
            mask = Constants.lastCard;
          } else {
            mask = Constants.centerCard;
          }
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetailScreen(
                movieName: newMovies[index].movieName,
  moviePoster:newMovies[index].moviePoster,
movieReleaseYear:newMovies[index].movieReleaseYear,
   movieCategory:newMovies[index].movieCategory,
   movieDuration:newMovies[index].movieDuration,
  movieRating: newMovies[index].movieRating,
 movieSinopsis: newMovies[index].movieSinopsis,
 movieCast:newMovies[index].movieCast,
              )));
            },
            child: Container(
              margin: EdgeInsets.only(
                left: index == 0 ? 20 : 0,
              ),
              height: 160,
              width: 142,
              child: MovieCard(
                asset: newMovies[index].moviePoster,
                mask: mask,
              ),
            ),
          );
        },
      ),
    );
  }
}
