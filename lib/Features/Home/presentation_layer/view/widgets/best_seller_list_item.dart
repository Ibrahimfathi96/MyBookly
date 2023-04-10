import 'package:flutter/material.dart';

import '../../../../../Core/Utils/AppAssets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 2.5/4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  image: const DecorationImage(image: AssetImage(AppAssets.kTestImage2),fit: BoxFit.cover)
              ),
            ),
          ),
        ],
      ),
    );
  }
}
