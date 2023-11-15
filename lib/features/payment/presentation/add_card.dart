import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_appeorem/common_widgets/back_icon.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/payment/presentation/add_new_card_screen.dart';
import 'package:test_appeorem/features/payment/presentation/widget/card.dart';
import 'package:test_appeorem/custom_widgets/custom_text_field.dart';

class AddCardScreen extends StatelessWidget {
  const AddCardScreen({super.key});

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
                'Payment',
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverToBoxAdapter(
              child: CardDetails(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverToBoxAdapter(
              child: InkWell(
                onTap:() {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const AddNewCardScreen()));
                },
                child: Container(
                    height: 50,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF5F2FF),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: primaryColor),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: primaryColor,
                        ),
                        Text(
                          'Add new card',
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    )),
              ),
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
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
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
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
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
          SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Save card info',
                      style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Switch(
                      value: true,
                      onChanged: (val) {},
                      activeColor: Colors.white,
                      activeTrackColor: Colors.green,
                    )
                  ],
                ),
              )),
        ],
      )),
      bottomNavigationBar: const CustomBottomAppBar(title: 'Save card'),
    );
  }
}
