import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/authentication/presentation/register/register_controller.dart';
import 'package:test_appeorem/features/authentication/presentation/widget/custom_atuh_text_field.dart';
import 'package:test_appeorem/utils/loading_error.dart';
import 'package:test_appeorem/utils/validators.dart';
class RegisterTextController extends GetxController{
  var userNameTextCtrl= TextEditingController();
  var passwordTextCtrl= TextEditingController();
  var emailTextCtrl= TextEditingController();
  @override
  void onClose() {
    userNameTextCtrl.dispose();
    passwordTextCtrl.dispose();
    emailTextCtrl.dispose();
    super.onClose();
  }
}
class RegisterScreen extends StatelessWidget {
   RegisterScreen({super.key});
final controller=Get.put(RegisterTextController());
final _key=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: ""),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
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
                height: 6,
              ),
               CustomAuthTextField(
                title: "Email address",
                  controller: controller.emailTextCtrl,
                  validator: validateEmail,
              ),
              const SizedBox(
                height: 6,
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
              const Spacer()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Consumer(
        builder: (context,ref,_) {
          ref.listen(registerControllerProv,(_,next){
            loadingAndError(next.isLoading, next.hasError, next.error.toString());
            if(next.hasValue && next.value!){
              Get.dialog(const AlertDialog(
                title: Text("User created"),
              ));
            }
          });
          return InkWell(
            onTap: (){
              if(_key.currentState!.validate()){
                ref.read(registerControllerProv.notifier).register(controller.userNameTextCtrl.text, controller.passwordTextCtrl.text, controller.emailTextCtrl.text);
              }
            },
            child: CustomBottomAppBar(title: "Sign up"));
        }
      ),
    );
  }
}