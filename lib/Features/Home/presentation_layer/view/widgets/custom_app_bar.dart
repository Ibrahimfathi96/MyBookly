import 'package:bookly/Core/Utils/AppAssets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBAr extends StatelessWidget {
  const CustomAppBAr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AppAssets.kLogo,
          height: 40,
          width: 100,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.magnifyingGlass),
        ),
      ],
    );
  }
}
