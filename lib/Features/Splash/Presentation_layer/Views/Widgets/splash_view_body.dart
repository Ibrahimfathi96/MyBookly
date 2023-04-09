import 'package:bookly/Constants.dart';
import 'package:bookly/Features/Home/presentation_layer/view/home_view.dart';
import 'package:bookly/Features/Splash/Presentation_layer/Views/Widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../Core/Utils/AppAssets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {

  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    initSlidingAnimation();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3),(){
      Get.to(()=>const HomeView(),transition: Transition.fadeIn,duration:kTransitionDuration );
    });
  }
  void initSlidingAnimation() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end:Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    //to avoid memory leakage
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AppAssets.kLogo,
        ),
        const SizedBox(
          height: 12,
        ),
        SlidingTextWidget(slidingAnimation: slidingAnimation,),
      ],
    );
  }
}
