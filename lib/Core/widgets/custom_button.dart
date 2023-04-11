import 'package:bookly/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBookButton extends StatelessWidget {
  final Color backGroundColor ;
  final Color textColor ;
  final String text;
  final BorderRadius? borderRadius;
  final void Function()? onPressed;

  const CustomBookButton(
      {Key? key,
        required this.backGroundColor,
        required this.textColor,
        this.borderRadius,
        required this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backGroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        child: Text(
          text,
          style: Styles.textStyle18
              .copyWith(color: textColor, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
