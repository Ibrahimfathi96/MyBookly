import 'package:bookly/Features/Home/presentation_layer/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_error_widget.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_list_view_item.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: FeaturedBooksListViewItem(
                      imageUrl: state.books[index].volumeInfo!.imageLinks!
                          .thumbnail!,
                    ),
                  ),
              itemCount: state.books.length,
            ),
          );
        }else if(state is SimilarBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
