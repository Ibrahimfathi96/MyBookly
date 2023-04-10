import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          FeaturedBooksListView(),
          Padding(
            padding: EdgeInsets.only(top: 40.0,left: 12),
            child: Text(
              "Best Seller",
              textAlign: TextAlign.start,
              style: Styles.titleMedium,
            ),
          ),

        ],
      ),
    );
  }
}
