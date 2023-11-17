import 'package:flutter/material.dart';
import 'package:test_appeorem/common_widgets/loading_circle.dart';

class AlertDialogLoading extends StatelessWidget {
  const AlertDialogLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: const LoadingCircle(),
    );
  }
}