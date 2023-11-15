import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            child: SvgPicture.asset(
          "assets/payment/card_1.svg",
          height: 200,
        )),
        const Positioned(
            top: 20,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Mrh Raju",
                  style: TextStyle(
                    color: Color(0xFFFEFEFE),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Visa",
                  style: TextStyle(
                    color: Color(0xFFFEFEFE),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )),
        const Positioned(
            left: 20,
            top: 90,
            child: Text(
              'Visa Classic',
              style: TextStyle(
                color: Color(0xFFFEFEFE),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            )),
        const Positioned(
            left: 20,
            top: 120,
            child: Text(
              '5254 **** **** 7690',
              style: TextStyle(
                  color: Color(0xFFFEFEFE),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  wordSpacing: 10),
            )),
        const Positioned(
            left: 20,
            top: 150,
            child: Text(
              '\$4,234.55',
              style: TextStyle(
                color: Color(0xFFFEFEFE),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            )),
      ],
    );
  }
}
