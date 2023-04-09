
import 'package:bookly/Core/Utils/AppAssets.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewItem extends StatelessWidget {
  const FeaturedBooksListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7/4,//for responsive UI
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          image: const DecorationImage(image: AssetImage(AppAssets.kTestImage2),fit: BoxFit.cover)
        ),
      ),
    );
  }
}
