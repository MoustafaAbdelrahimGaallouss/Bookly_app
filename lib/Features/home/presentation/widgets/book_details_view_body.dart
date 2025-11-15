import 'package:bookly_app/Features/home/presentation/widgets/action_button.dart';
import 'package:bookly_app/Features/home/presentation/widgets/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/widgets/book_image_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
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
          SizedBox(height: 43),
          Text(
            'The Jungle Book',
            textAlign: TextAlign.center,
            style: Styles.textStyle30,
          ),
          SizedBox(height: 6),
          Text(
            'Rudyard Kipling',

            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          SizedBox(height: 18),
          BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 38),
          ActionButton(),
        ],
      ),
    );
  }
}
