import 'package:bookly_app/Features/home/presentation/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';


class BestSellerlistView extends StatelessWidget {
  const BestSellerlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BestSelleritem(),
        );
      },
    );
  }
}
