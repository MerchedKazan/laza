import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, required this.name,this.hasMaxLines=false,});
  final String name, label;
  final bool hasMaxLines;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
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
            child: TextField(
              maxLines:hasMaxLines? 5:1,
              decoration: InputDecoration(
                  fillColor: secondaryColor, // Set the fill color
                  filled: true,
                  border: InputBorder.none,
                  hintText: label,
               
                  hintStyle: const TextStyle(
                    color: secondaryTextColor,
                  
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
