import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';


class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

 

  

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Constants.wht.withOpacity(.05),
      child: ClipRRect(
        child: BackdropFilter(filter: ImageFilter.blur(
          sigmaX: 2.0,
          sigmaY: 2.0
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Constants.wht.withOpacity(.09),
                width: 2,
              )
            )
          ),
          height: 70,
          child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Constants.iconHome,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Constants.iconPlayOnTv,
                ),
              ),
            ),
            const Expanded(
              child: Text(''),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Constants.iconCategories,
                ),
              ),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  Constants.iconDownload,
                ),
              ),
            ),
          ],
        ),
        ),
        ),
      ),
    );
  }
}
