import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:test_appeorem/common_widgets/back_icon.dart';
import 'package:test_appeorem/common_widgets/cart_icon.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/features/item/domain/item_model.dart';
import 'package:test_appeorem/features/item/presentation/widget/review_widget.dart';
import 'package:test_appeorem/features/review/presentation/review_list_screen.dart';
import 'package:test_appeorem/widget/rounded_circle_with_icon.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key, required this.itemModel});
  final ItemModel itemModel;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final topPadding = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 0,
            pinned: true,
            leading: const SizedBox(),
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackIcon(withWhiteBackground: true),
                CartIcon(withWhiteBackground: true)
              ],
            ),
            flexibleSpace: Image.asset(itemModel.image, fit: BoxFit.fitWidth),
            expandedHeight: mediaQuery.height * 0.5 + topPadding,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: LayoutBuilder(builder: (context, constraints) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: constraints.maxWidth * 0.7,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemModel.category,
                                style: const TextStyle(
                                  color: secondaryTextColor,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                itemModel.name,
                                style: const TextStyle(
                                  color: primaryTextColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Price',
                          style: TextStyle(
                            color: secondaryTextColor,
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$${itemModel.price}',
                          style: const TextStyle(
                            color: primaryTextColor,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                );
              }),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 70,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: Image.asset(
                        itemModel.subImage[index],
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
                itemCount: itemModel.subImage.length,
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Size",
                    style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Size guide",
                    style: TextStyle(
                        color: secondaryTextColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 60,
                    width: 60,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: secondaryColor),
                    child: Center(
                      child: Text(
                        itemModel.sizes[index],
                        style: const TextStyle(
                          color: primaryTextColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: itemModel.sizes.length,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Description",
                    style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    itemModel.description,
                    style: const TextStyle(
                      color: secondaryTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Reviews",
                    style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => ReviewListScreen(
                                reviews: itemModel.reviews,
                              )));
                    },
                    child: const Text(
                      "View all",
                      style: TextStyle(
                          color: secondaryTextColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ReviewWidget(reviewModel: itemModel.reviews.first),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'with VAT,SD',
                      style: TextStyle(
                        color: secondaryTextColor,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Text(
                  '\$${itemModel.price + 5}',
                  style: const TextStyle(
                    color: primaryTextColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(10),
              color: primaryColor,
              child: const Center(
                  child: Text(
                "Add to cart",
                style: TextStyle(
                  color: Color(0xFFFEFEFE),
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ),
          )
        ],
      ),
    );
  }
}
