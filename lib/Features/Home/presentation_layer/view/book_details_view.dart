import 'package:bookly/Features/Home/data_layer/models/book_model/BookModel.dart';
import 'package:bookly/Features/Home/presentation_layer/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_details_appBar.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Constants.dart';

class BookDetailsView extends StatefulWidget {
  static const String routeName = '/bookDetails';
  const BookDetailsView({Key? key, required this.bookModel}) : super(key: key);
  final BookModel bookModel;
  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
        category: widget.bookModel.volumeInfo!.categories![0]);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: const BookDetailsAppBar(),
      ),
      body: const BookDetailsViewBody(),
    );
  }
}


