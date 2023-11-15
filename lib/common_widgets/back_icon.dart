import 'package:flutter/material.dart';
import 'package:test_appeorem/features/cart/presentation/cart_screen.dart';
import 'package:test_appeorem/widget/rounded_circle_with_icon.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key,required this.withWhiteBackground});
final bool withWhiteBackground;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: const RoundedCircleWithIcon(isWhiteBackground: false, svgAsset: "assets/svg/arrow.svg"));
  }
}