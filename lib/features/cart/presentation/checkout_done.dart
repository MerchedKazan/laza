import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';

class CheckOutDoneScreen extends StatelessWidget {
  const CheckOutDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: ""),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(
              children: [
                Image.asset(
                  "assets/checkout/background.png",
                  width: MediaQuery.of(context).size.width,
                ),
                Image.asset(
                  "assets/checkout/phone.png",
                  width: MediaQuery.of(context).size.width,
                ),
              ],
            ),
          ),
          const Text(
            'Order Confirmed!',
            style: TextStyle(
                color: primaryTextColor,
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Your order has been confirmed, we will send you confirmation email shortly.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: secondaryTextColor,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                              height: 50,
                              padding: const EdgeInsets.all(10),
                              decoration: ShapeDecoration(
                    color: const Color(0xFFF5F5F5),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    ),
                              ),
                              child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Text(
                        'Go to Orders',
                        style: TextStyle(
                            color: secondaryTextColor,
                            fontSize: 17,
                            
                            fontWeight: FontWeight.w500,
                           
                        ),
                    ),
                    ],
                              ),
                          ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomAppBar(title: "Continue shopping"),
    );
  }
}
