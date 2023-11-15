import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/features/address/presentation/add_address_screen.dart';
import 'package:test_appeorem/features/payment/presentation/add_card.dart';

class SubtitleInCart extends StatelessWidget {
  const SubtitleInCart(
      {super.key,
      required this.subtitle,
      required this.image,
      required this.name,
      required this.details,
      this.isVisa = false,
      this.isAddress = false,
      });
  final String subtitle;
  final String image, name, details;
  final bool isVisa,isAddress;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: primaryTextColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: primaryTextColor,
                  size: 20,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: (){
                if(isAddress){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AddAddressScreen()));
                }else{
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>AddCardScreen()));
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      isVisa
                          ? (Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: secondaryColor),
                              child: Image.asset(image),
                            ))
                          : ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(10)),
                              child: Image.asset(
                                image,
                                height: 50,
                                width: 50,
                              )),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: const TextStyle(
                              color: primaryTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            details,
                            style: const TextStyle(
                              color: secondaryTextColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const ShapeDecoration(
                          color: Color(0xFF4AC76D),
                          shape: OvalBorder(),
                        ),
                        child: const Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
