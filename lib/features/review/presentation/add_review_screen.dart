import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_text_field.dart';

class AddReviewScreen extends StatelessWidget {
  const AddReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: "Reviews",
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              sliver: CustomTextField(label: "type your name", name: "Name")),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              sliver: CustomTextField(
                label: "Describe your experience",
                name: "How was your experience?",
                hasMaxLines: true,
              )),
          SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Star',
                      style: TextStyle(
                        color: Color(0xFF1D1E20),
                        fontSize: 17,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '0.0',
                          style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Expanded(
                            child: Slider(value: 0.5, onChanged: (val) {})),
                             Text(
                          '5.0',
                          style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
        bottomNavigationBar:const CustomBottomAppBar(title: "Submit review",),
    );
  }
}

