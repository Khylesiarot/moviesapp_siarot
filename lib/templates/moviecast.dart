import 'package:flutter/material.dart';

import '../constants.dart';
import 'moviecard.dart';

class MovieCast extends StatefulWidget {
  final double? screenHeight;
  final double? screenWidth;
  final List<String>? movieCast;

  const MovieCast({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.movieCast,
  }) : super(key: key);

  @override
  State<MovieCast> createState() => _MovieCast();
}

class _MovieCast extends State<MovieCast> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.screenHeight! * 0.01,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 23,
          ),
          // color: Colors.amber,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Text(
                    'Casts',
                    style: TextStyle(
                      color: Constants.wht,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: widget.screenHeight! <= 667 ? 10 : 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    minRadius: 16,
                    maxRadius: widget.screenWidth! <= 375 ? 24 : 30,
                    backgroundImage:
                        const AssetImage('assets/cast/image 77.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 50,
                          maxWidth: 90,
                        ),
                        transform: Matrix4.translationValues(-6, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const MovieCard(
                              asset: Constants.ovalmask,
                              mask: Constants.ovalmask,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16.0,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20.0),
                                  child: Text(
                                    widget.movieCast![0],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.orange,
                      minRadius: 16,
                      maxRadius: widget.screenWidth! <= 375 ? 24 : 30,
                      backgroundImage:
                          const AssetImage('assets/cast/image 78.png')),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 50,
                          maxWidth: 90,
                        ),
                        transform: Matrix4.translationValues(-6, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const MovieCard(
                              asset: Constants.ovalmask,
                              mask: Constants.ovalmask,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16.0,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: Text(
                                    widget.movieCast![1],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.orange,
                      minRadius: 16,
                      maxRadius: widget.screenWidth! <= 375 ? 24 : 30,
                      backgroundImage:
                          const AssetImage('assets/cast/image 79.png')),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 50,
                          maxWidth: 90,
                        ),
                        transform: Matrix4.translationValues(-6, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const MovieCard(
                              asset: Constants.ovalmask,
                              mask: Constants.ovalmask,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16.0,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    widget.movieCast![2],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.orange,
                      minRadius: 16,
                      maxRadius: widget.screenWidth! <= 375 ? 24 : 30,
                      backgroundImage:
                          const AssetImage('assets/cast/image 80.png')),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        constraints: const BoxConstraints(
                          maxHeight: 50,
                          maxWidth: 90,
                        ),
                        transform: Matrix4.translationValues(-6, 0, 0),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            const MovieCard(
                              asset: Constants.ovalmask,
                              mask: Constants.ovalmask,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16.0,
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    widget.movieCast![3],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                    ),
                                    maxLines: 2,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
