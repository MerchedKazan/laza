import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:test_appeorem/common_widgets/alert_loading.dart';
Future showloadingDialog(){
  return Get.dialog(AlertDialogLoading(),barrierDismissible: false);
}
void dissmissAlertDialog(){
  if(Get.overlayContext!=null){
    return Navigator.of(Get.overlayContext!).pop();
  }
}

Future showErrorDialog(String error){
 return Get.dialog(AlertDialog(
                      title: Text(error),
                    ));
}

void loadingAndError(bool isLoading,bool hasError,String error){
   if(isLoading){
      showloadingDialog();
   }else{
dissmissAlertDialog();
  }
if(hasError){
  showErrorDialog(error);
}
}