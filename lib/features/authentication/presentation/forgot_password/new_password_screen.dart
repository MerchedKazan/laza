import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/authentication/presentation/forgot_password/verification_code_screen.dart';
import 'package:test_appeorem/features/authentication/presentation/widget/custom_atuh_text_field.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CommonAppBar(title: ""),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'New Password',
              style: TextStyle(
                color: primaryTextColor,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            CustomAuthTextField(
              title: "Password",
            ),
            SizedBox(height: 6,),
            CustomAuthTextField(
              title: "Confirm password",
            ),

            Spacer(),
            Text.rich(
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
      bottomNavigationBar: CustomBottomAppBar(title: "Reset password"),
    );
  }
}
