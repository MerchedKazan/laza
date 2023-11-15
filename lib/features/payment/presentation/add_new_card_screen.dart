import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_appeorem/common_widgets/back_icon.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/payment/presentation/widget/card.dart';
import 'package:test_appeorem/custom_widgets/custom_text_field.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          const SliverPadding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            sliver: SliverAppBar(
              leading: BackIcon(withWhiteBackground: false),
              centerTitle: true,
              title: Text(
                'Add new card',
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween
                ,children: [
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: const Color(0xFFFFEDE3),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: Color(0xFFFF5F00),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    padding: const EdgeInsets.all( 10),
                    child: Image.asset(
                      "assets/payment/new_card/master_card.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    padding: const EdgeInsets.all( 10),
                    child: Image.asset(
                      "assets/payment/new_card/paypal.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                const SizedBox(width: 15,),
                Expanded(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: secondaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    padding: const EdgeInsets.all( 10),
                    child: SvgPicture.asset(
                      "assets/payment/new_card/bank.svg",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
              ]),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: CustomTextField(
              name: "Card owner",
              label: "Mrh raju",
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: CustomTextField(
              name: "Card Number",
              label: "5254 7634 8734 7690",
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: LayoutBuilder(builder: (context, constraints) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Exp",
                          style: TextStyle(
                            color: Color(0xFF1D1E20),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: SizedBox(
                            width: constraints.maxWidth * 0.47,
                            child: const TextField(
                              decoration: InputDecoration(
                                  fillColor:
                                      secondaryColor, // Set the fill color
                                  filled: true,
                                  border: InputBorder.none,
                                  labelText: "12/24",
                                  labelStyle: TextStyle(
                                    color: secondaryTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CVV",
                          style: TextStyle(
                            color: Color(0xFF1D1E20),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: SizedBox(
                            width: constraints.maxWidth * 0.47,
                            child: const TextField(
                              decoration: InputDecoration(
                                  fillColor:
                                      secondaryColor, // Set the fill color
                                  filled: true,
                                  border: InputBorder.none,
                                  labelText: "456",
                                  labelStyle: TextStyle(
                                    color: secondaryTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  )),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      )),
      bottomNavigationBar: const CustomBottomAppBar(title: 'Add card'),
    );
  }
}
