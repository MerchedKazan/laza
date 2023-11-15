import 'package:flutter/material.dart';
import 'package:test_appeorem/common_widgets/back_icon.dart';
import 'package:test_appeorem/constants/theme.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({
    super.key,
    required this.title
  });
  final String title;
    @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      leading: const Align(
        alignment: Alignment.center,
        child: BackIcon(withWhiteBackground: false)),
      centerTitle: true,
      surfaceTintColor: Colors.white,
      title:  Text(
        title,
        style:const TextStyle(
          color: primaryTextColor,
          fontSize: 17,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
  

}