import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/authentication/presentation/forgot_password/verification_code_screen.dart';
import 'package:test_appeorem/features/authentication/presentation/widget/custom_atuh_text_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: ""),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Forgot Password',
              style: TextStyle(
                color: primaryTextColor,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            SvgPicture.asset("assets/svg/forgot_password.svg"),
            const CustomAuthTextField(
              title: "Email Address",
            ),
            const Spacer(),
            const Text.rich(
                TextSpan(
                    children: [
                        TextSpan(
                            text: 'Please write your email to receive a confirmation code to set a new password.',
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
      bottomNavigationBar: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>VerificationCodeScreen()));
        },
        child: const CustomBottomAppBar(title: "Confirm mail")),
    );
  }
}
