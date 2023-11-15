import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';

class OrderInfoCart extends StatelessWidget {
  const OrderInfoCart({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverPadding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        sliver: SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Info',
              style: TextStyle(
                color: primaryTextColor,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Subtotal',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '\$110',
                  style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping cost',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '\$10',
                  style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '\$120',
                  style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        )));
  }
}
