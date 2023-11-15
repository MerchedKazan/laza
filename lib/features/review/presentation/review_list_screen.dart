import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_appeorem/common_widgets/back_icon.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/features/item/domain/item_model.dart';
import 'package:test_appeorem/features/item/presentation/widget/review_widget.dart';
import 'package:test_appeorem/features/review/presentation/add_review_screen.dart';

class ReviewListScreen extends StatelessWidget {
  const ReviewListScreen({super.key, required this.reviews});
  final List<ReviewModel> reviews;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: "Reviews",),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '245 Reviews',
                      style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    RatingBar.builder(
                        itemCount: 5,
                        allowHalfRating: true,
                        ignoreGestures: true,
                        itemSize: 10,
                        initialRating: 4.8,
                        itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                        onRatingUpdate: (val) {})
                  ],
                ),
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const AddReviewScreen()));
                  },
                  child: Container(
                // height: 35,
                      padding: const EdgeInsets.all(8),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFFF7043),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.rate_review_rounded,
                            color: Colors.white,
                          ),
                          Text(
                            'Add Review',
                            style: TextStyle(
                              color: Color(0xFFFEFEFE),
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0),
                    child: ReviewWidget(reviewModel: reviews[index]),
                  );
                },
                itemCount: reviews.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}


