import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_details_appBar.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

import '../../../../Constants.dart';

class BookDetailsView extends StatelessWidget {
  static const String routeName = '/bookDetails';
  const BookDetailsView({Key? key}) : super(key: key);

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


