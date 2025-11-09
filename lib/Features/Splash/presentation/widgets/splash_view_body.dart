import 'package:bookly_app/Features/home/presentation/views/home_view.dart';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

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
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 20),
        AnimatedBuilder(
          animation: slidingAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slidingAnimation,
              child: Text(
                'Read free books',
                textAlign: TextAlign.center,
                style: Theme.of(
                  context,
                ).textTheme.displayMedium!.copyWith(fontSize: 24),
              ),
            );
          },
        ),
      ],
    );
  }

  ///Functions
  ///==========================================
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(animationController);

    animationController.forward();
  }

  ///==========================================

  void navigateToHome() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(
        () => HomeView(),
        transition: Transition.fadeIn,
        duration: kTabScrollDuration,
      );
    });
  }
}
