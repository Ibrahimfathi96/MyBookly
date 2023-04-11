
import 'package:bookly/Constants.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  /*font family should be constant for most of the app just some texts are exceptions
  * here comes the benefit of using copy with the textStyles here just the exceptions will
  * have another font family mvvm video51 is really important for textStyles
  * */
  static const textStyle22 = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,);
  static const textStyle24 = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.normal,
    fontFamily: kGTSectraFine
  );
  static const textStyle16 = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.normal,
  );
  static const textStyle18 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
  );
  static const textStyle20 = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
  );
  static const textStyle20N = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
      fontFamily: kGTSectraFine
  );
  static const textStyle30 = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.normal,
    fontFamily: kGTSectraFine
  );

}
