import 'package:bookly/Core/Utils/styles.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/best_seller_listview.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/featured_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              FeaturedBooksListView(),
              Padding(
                padding: EdgeInsets.only(top: 40.0,left: 18,bottom: 20),
                child: Text(
                  "Best Seller",
                  textAlign: TextAlign.start,
                  style: Styles.textStyle22,
                ),
              ),
            ],
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: BestSellerListView(),
        ),)
      ],
    );
  }
}

