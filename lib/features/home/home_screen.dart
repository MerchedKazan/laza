import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_appeorem/common_widgets/cart_icon.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/fake_data/data.dart';
import 'package:test_appeorem/features/item/presentation/item_screen.dart';
import 'package:test_appeorem/widget/rounded_circle_with_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEFEFE),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundedCircleWithIcon(
                      isWhiteBackground: false,
                      svgAsset: "assets/svg/menu.svg"),
                  CartIcon(withWhiteBackground: false)
                ],
              ),
              gapH20,
              const Text(
                "Hello",
                style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const Text("Welcome to laza.",
                  style: TextStyle(
                      color: secondaryTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400)),
              gapH20,
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(15),
                      decoration: const BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0xff8F959E),
                          ),
                          Text(
                            "Search...",
                            style: TextStyle(
                              color: secondaryTextColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Center(
                      child: Icon(
                        Icons.mic_none,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              gapH20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Choose brand",
                    style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: secondaryTextColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),

              /// brand list
              SizedBox(
                height: 80,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: secondaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Colors.white),
                                padding: const EdgeInsets.all(4),
                                child: SvgPicture.asset(
                                  fakeBrandList[index].imageAsset,
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              fakeBrandList[index].name,
                              style: const TextStyle(
                                  color: primaryTextColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ));
                  },
                  itemCount: fakeBrandList.length,
                ),
              ),
              gapH20,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New arrival",
                    style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "View all",
                    style: TextStyle(
                        color: secondaryTextColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),

              /// Item list
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 260),
                  itemBuilder: (context, index) {
                    return LayoutBuilder(builder: (context, constraints) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (_) =>
                                  ItemScreen(itemModel: fakeItemList[index])));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(15)),
                                    child: Image.asset(
                                      fakeItemList[index].image,
                                      height: 200,
                                    )),
                                Positioned(
                                    top: 10,
                                    right: 10,
                                    child: SvgPicture.asset(
                                        "assets/svg/heart.svg"))
                              ],
                            ),
                            Text(
                              fakeItemList[index].name,
                              maxLines: 2,
                              style: const TextStyle(
                                  color: primaryTextColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text("\$${fakeItemList[index].price}",
                                style: const TextStyle(
                                    color: primaryTextColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                      );
                    });
                  },
                  itemCount: fakeItemList.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
