import 'package:bookly/Core/Utils/AppAssets.dart';
import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child:
        CircularProgressIndicator(),
    );
  }
}
