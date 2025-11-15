import 'package:bookly_app/Features/home/presentation/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/book_image_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var widthM = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          CustomBookDetialsAppBar(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widthM * 0.2),
            child: BookImageItem(),
          ),
        ],
      ),
    );
  }
}
