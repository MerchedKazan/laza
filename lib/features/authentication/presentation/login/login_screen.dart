import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/authentication/presentation/forgot_password/forgot_password_screen.dart';
import 'package:test_appeorem/features/authentication/presentation/login/login_controller.dart';
import 'package:test_appeorem/features/authentication/presentation/widget/custom_atuh_text_field.dart';
import 'package:test_appeorem/features/home/home_screen.dart';
import 'package:test_appeorem/utils/loading_error.dart';
import 'package:test_appeorem/utils/validators.dart';
class LoginTextController extends GetxController{
  var userNameTextCtrl= TextEditingController();
  var passwordTextCtrl= TextEditingController();
  
  @override
  void onClose() {
    userNameTextCtrl.dispose();
    passwordTextCtrl.dispose();
    super.onClose();
  }
}
class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});
final _key = GlobalKey<FormState>();
final controller=Get.put(LoginTextController());

  @override
  Widget build(BuildContext context) {
    controller.onClose;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CommonAppBar(title: ""),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const Text(
                'Welcome',
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                'Please enter your data to continue',
                style: TextStyle(
                  color: secondaryTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
               CustomAuthTextField(
                title: "Username",
                controller: controller.userNameTextCtrl,
                validator: validateName,
              ),
              const SizedBox(
                height: 6,
              ),
               CustomAuthTextField(
                title: "Password",
                controller: controller.passwordTextCtrl,
                validator: validatePassword,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=> ForgotPasswordScreen()));
                    },
                    child: const Text(
                      "Forgot password?",
                      style: TextStyle(
                          color: Color(0xFFEA4335),
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                          textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Remember me',
                    style: TextStyle(
                      color: primaryTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Switch(
                    value: true,
                    onChanged: (val) {},
                    activeColor: Colors.white,
                    activeTrackColor: Colors.green,
                  )
                ],
              ),
              const Spacer(
                
              ),
              const Text.rich(
                  TextSpan(
                      children: [
                          TextSpan(
                              text: 'By connecting your account confirm that you agree with our ',
                              style: TextStyle(
                                  color: secondaryTextColor,
                                  fontSize: 13,
                              
                                  fontWeight: FontWeight.w400,
                                  
                              ),
                          ),
                          TextSpan(
                              text: 'Term and Condition',
                              style: TextStyle(
                                  color: primaryTextColor,
                                  fontSize: 13,
                                 
                                  fontWeight: FontWeight.w500,
                               
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
          ref.listen(loginControllerProv,(_,next){
            loadingAndError(next.isLoading, next.hasError, next.error.toString());
            if(next.hasValue && next.value!=null && next.value!.isNotEmpty){
              Get.offUntil(MaterialPageRoute(builder: (_)=>HomeScreen()), (route) => false);
            }
          });
          return InkWell(
            onTap: (){
              if(_key.currentState!.validate()){
                ref.read(loginControllerProv.notifier).login(controller.userNameTextCtrl.text,controller.passwordTextCtrl.text);
              }
              
              // Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomeScreen()));
            },
            child: const CustomBottomAppBar(title: "Login"));
        }
      ),
    );
  }
}
