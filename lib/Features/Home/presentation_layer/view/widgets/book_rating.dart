import 'package:bookly/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({Key? key, required this.rating, required this.count}) : super(key: key);
  final num rating;
  final num count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 14,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          count.toString(),
          style: Styles.textStyle16.copyWith(
            color: Colors.grey
          ),
        ),
      ],
    );
  }
}
