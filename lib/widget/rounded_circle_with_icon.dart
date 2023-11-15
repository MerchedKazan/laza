import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoundedCircleWithIcon extends StatelessWidget {
  const RoundedCircleWithIcon({super.key,required this.isWhiteBackground,required this.svgAsset});
final bool isWhiteBackground;
final String svgAsset;
  @override
  Widget build(BuildContext context) {
    return Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            borderRadius:const BorderRadius.all(Radius.circular(100)),
            color:isWhiteBackground ?Colors.white:const Color(0xffF5F6FA)
          ),
          child: Center(child: SvgPicture.asset(svgAsset),),
        );
  }
}