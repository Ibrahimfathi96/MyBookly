import 'package:bookly/Features/Home/presentation_layer/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/Features/Home/presentation_layer/view/book_details_view.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_error_widget.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_list_view_item.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
              itemCount: state.books.length,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GestureDetector(
                  onTap: (){
                    GoRouter.of(context).push(BookDetailsView.routeName,extra: state.books[index]);
                  },
                  child: FeaturedBooksListViewItem(
                    imageUrl: state.books[index].volumeInfo?.imageLinks?.thumbnail??'',
                  ),
                ),
              ),
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
