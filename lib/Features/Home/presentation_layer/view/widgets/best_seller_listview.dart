import 'package:bookly/Features/Home/presentation_layer/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/best_seller_list_item.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_error_widget.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoaded) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: BestSellerListViewItem(
                book: state.books[index],
              ),
            ),
          );
        }else if(state is NewestBooksFailure){
          return CustomErrorWidget(errMessage: state.errorMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}