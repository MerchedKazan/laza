import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/features/item/domain/item_model.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
    required this.reviewModel,
  });

  final ReviewModel reviewModel;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CircleAvatar(
                      child: Image.asset(
                    reviewModel.image,
                    width: 40,
                    height: 40,
                  ))),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    reviewModel.name,
                    style: const TextStyle(
                      color: primaryTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.lock_clock,
                        color: secondaryTextColor,
                      ),
                      Text(
                        reviewModel.date,
                        style: const TextStyle(
                          color: Color(0xFF8F959E),
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: reviewModel.rating.toString(),
                    style: const TextStyle(
                      color: primaryTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    )),
                const TextSpan(
                  text: " rating",
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ])),
              RatingBar.builder(
                  itemCount: 5,
                  allowHalfRating: true,
                  ignoreGestures: true,
                  itemSize: 10,
                  initialRating: reviewModel.rating,
                  itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                  onRatingUpdate: (val) {})
            ],
          )
        ],
      ),
      Text(
        reviewModel.review,
        style: const TextStyle(
          color: secondaryTextColor,
          fontSize: 15,
          fontWeight: FontWeight.w400,
        ),
      )
    ]);
  }
}

