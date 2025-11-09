import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 20),
        Text(
          'Read free books',
          textAlign: TextAlign.center,
          style: Theme.of(
            context,
          ).textTheme.displayMedium!.copyWith(fontSize: 24),
        ),
      ],
    );
  }
}
