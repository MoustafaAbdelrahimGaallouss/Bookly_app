import 'package:flutter/material.dart';

class CustomBookDetialsAppBar extends StatelessWidget {
  const CustomBookDetialsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.close, size: 24, color: Colors.white),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.shopping_cart_outlined,
            size: 24,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
