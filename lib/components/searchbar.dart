import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';


class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key, required this.padding}) : super(key: key);

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        // height: 36,
        decoration: BoxDecoration(
          color: Constants.gry.withOpacity(0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              Constants.iconSearch,
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: Constants.wht.withOpacity(0.6),
                  fontSize: 17,
                  letterSpacing: -0.41,
                ),
                decoration: InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  isDense: true,
                  hintStyle: TextStyle(
                    color: Constants.wht.withOpacity(0.6),
                    fontSize: 16,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              Constants.iconMic,
            ),
            const SizedBox(
              width: 7,
            ),
          ],
        ),
      ),
    );
  }
}
