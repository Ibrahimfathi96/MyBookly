import 'package:bookly/Constants.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/custom_app_bar.dart';
import 'package:bookly/Features/Home/presentation_layer/view/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        automaticallyImplyLeading: false,
        title: const CustomAppBAr(),
      ),
      body:const HomeViewBody(),
    );
  }
}
