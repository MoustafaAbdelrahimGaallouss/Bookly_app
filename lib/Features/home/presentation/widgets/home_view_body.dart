import 'package:bookly_app/Features/home/presentation/widgets/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/featured_book_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAppBar(), FeaturedBookListView(), Text("data")],
    );
  }
}
