
import 'package:flutter/material.dart';
class LoadingCircle extends StatelessWidget {
  const LoadingCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(child: Container(
                            
                            padding: const EdgeInsets.all(30),
                           
                            decoration: const BoxDecoration(
                               color: Colors.black26,
                              borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child:const CircularProgressIndicator.adaptive()));
  }
}