import 'package:bookly/Features/Home/presentation_layer/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_error_widget.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_list_view_item.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoaded) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: FeaturedBooksListViewItem(),
              ),
              itemCount: 15,
            ),
          );
        }else if (state is FeaturedBooksFailure){
          return CustomErrorWidget(errMessage: state.errorMessage,);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
