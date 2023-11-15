import 'package:flutter/material.dart';
import 'package:test_appeorem/common_widgets/back_icon.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/fake_data/data.dart';
import 'package:test_appeorem/features/cart/presentation/checkout_done.dart';
import 'package:test_appeorem/features/cart/presentation/widget/order_info.dart';
import 'package:test_appeorem/features/cart/presentation/widget/subtitle.dart';
import 'package:test_appeorem/features/payment/presentation/add_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
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
                  'Cart',
                  style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SliverList.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
                  child: Card(
                    color: !fakeCartItemList[index].pressed
                        ? Colors.white
                        : secondaryColor,
                    surfaceTintColor: !fakeCartItemList[index].pressed
                        ? Colors.white
                        : secondaryColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: IntrinsicHeight(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          const BorderRadius.all(Radius.circular(10)),
                                      color: fakeCartItemList[index].pressed
                                          ? Colors.white
                                          : secondaryColor),
                                  child: Image.asset(
                                    fakeCartItemList[index].image,
                                    height: 90,
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          fakeCartItemList[index].name,
                                          style: const TextStyle(
                                            color: primaryTextColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          fakeCartItemList[index].shopName,
                                          style: const TextStyle(
                                            color: primaryTextColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$${fakeCartItemList[index].price.toString()}",
                                          style: const TextStyle(
                                            color: secondaryTextColor,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const Text(
                                          " (-\$4.00 Tax)",
                                          style: TextStyle(
                                            color: secondaryTextColor,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              decoration: const ShapeDecoration(
                                                  shape: OvalBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Color(0xFFDEDEDE)),
                                              )),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.keyboard_arrow_down,
                                                  color: secondaryTextColor,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              "1",
                                              style: TextStyle(
                                                color: primaryTextColor,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Container(
                                              decoration: const ShapeDecoration(
                                                  shape: OvalBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color: Color(0xFFDEDEDE)),
                                              )),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.keyboard_arrow_up,
                                                  color: secondaryTextColor,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  decoration: const ShapeDecoration(
                                      shape: OvalBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFFDEDEDE)),
                                  )),
                                  child: const Center(
                                    child: Icon(
                                      Icons.delete_outlined,
                                      color: secondaryTextColor,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: fakeCartItemList.length,
            ),
            const SubtitleInCart(
                subtitle: "Delivery address",
                image: "assets/cart/address.png",
                name: "Chhatak, Sunamgonj ",
                details: "Sylhet",
                isAddress: true,
                ),
            const SubtitleInCart(
                subtitle: "Delivery address",
                image: "assets/cart/visa.png",
                name: "Visa Classic",
                details: "**** 7690",
                isVisa: true),
            const OrderInfoCart()
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const CheckOutDoneScreen()));
        },
        child:const CustomBottomAppBar(title: "Checkout"),
       
      ),
    );
  }
}
