import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_appeorem/common_widgets/back_icon.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/payment/presentation/widget/card.dart';
import 'package:test_appeorem/custom_widgets/custom_text_field.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

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
                'Address',
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
            sliver: CustomTextField(
              name: "Name",
              label: "Mrh raju",
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
                          "Country",
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
                                  labelText: "Bangladsh",
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
                          "City",
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
                                  labelText: "Sylhet",
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
           const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: CustomTextField(
              name: "Phone number",
              label: "+880 1453-987533",
            ),
          ),
           const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: CustomTextField(
              name: "Address",
              label: "Chhatak, Sunamgonj",
            ),
          ),



          SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              sliver: SliverToBoxAdapter(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Save as primary address',
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
      bottomNavigationBar: const CustomBottomAppBar(title: 'Save address'),
    );
  }
}
