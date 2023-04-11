import 'package:bookly/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({Key? key}) : super(key: key);

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
        const Text(
          '4.8',
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          '(2930)',
          style: Styles.textStyle16.copyWith(
            color: Colors.grey
          ),
        ),
      ],
    );
  }
}
