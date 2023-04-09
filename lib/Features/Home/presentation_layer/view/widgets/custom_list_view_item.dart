
import 'package:bookly/Core/Utils/AppAssets.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          // height: size.height * 0.3,
          // width: size.width  * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            image: const DecorationImage(image: AssetImage(AppAssets.kTestImage2),fit: BoxFit.cover)
          ),
        ),
      ),
    );
  }
}