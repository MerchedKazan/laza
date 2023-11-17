import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/authentication/presentation/forgot_password/forgot_password_screen.dart';
import 'package:test_appeorem/features/authentication/presentation/forgot_password/password_controller.dart';
import 'package:test_appeorem/features/authentication/presentation/forgot_password/verification_code_screen.dart';
import 'package:test_appeorem/features/authentication/presentation/register/register_controller.dart';
import 'package:test_appeorem/features/authentication/presentation/widget/custom_atuh_text_field.dart';
import 'package:test_appeorem/utils/loading_error.dart';
import 'package:test_appeorem/utils/validators.dart';

class NewPasswordScreen extends StatelessWidget {
   NewPasswordScreen({super.key});
final controller=Get.put(ForgotTextController());
final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CommonAppBar(title: ""),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const Text(
                'New Password',
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              CustomAuthTextField(
                title: "Password",
                controller: controller.passwordTextCtrl,
                validator: validatePassword,
                
              ),
              const SizedBox(height: 6,),
              CustomAuthTextField(
                title: "Confirm password",
                controller: controller.confirmPasswordTextCtrl,
                validator: (val){
                  if(val!=controller.passwordTextCtrl.text){
                   return "Password dosen't match";
                  }
                   return null;
                },
              ),
        
              const Spacer(),
              const Text.rich(
                  TextSpan(
                      children: [
                          TextSpan(
                              text: 'Please write your new password.',
                              style: TextStyle(
                                  color: secondaryTextColor,
                                  fontSize: 13,
                              
                                  fontWeight: FontWeight.w400,
                                  
                              ),
                          ),
                      ],
                  ),
                  textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Consumer(
        
        builder: (context,ref,_) {
          ref.listen(passwordControllerProv,(_,next){
            loadingAndError(next.isLoading, next.hasError, next.error.toString());
            if(next.hasValue && next.value!){
              Get.dialog(AlertDialog(
                title: Text("Password changed"),
              ));
            }
          });
          return InkWell(
            onTap: (){
              if(_key.currentState!.validate()){
                ref.read(passwordControllerProv.notifier).updatePassword(controller.passwordTextCtrl.text);
              }
            },
            child: const CustomBottomAppBar(title: "Reset password"));
        }
      ),
    );
  }
}
