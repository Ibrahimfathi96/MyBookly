import 'package:bookly/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CustomDetailsButtons extends StatelessWidget {
  const CustomDetailsButtons({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBookButton(
            onPressed: (){},
            backGroundColor: Colors.white,
            text: '19.99€',
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12)),
          ),
        ),
        Expanded(
          child: CustomBookButton(
            onPressed: (){},
            backGroundColor: const Color(0xffEF8262),
            text: 'Free Preview',
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
        ),
      ],
    );
  }
}