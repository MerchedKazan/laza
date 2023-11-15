import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/authentication/presentation/widget/custom_atuh_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: ""),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
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
            const CustomAuthTextField(
              title: "Username",
            ),
            const SizedBox(
              height: 6,
            ),
            const CustomAuthTextField(
              title: "Password",
            ),
            const SizedBox(
              height: 6,
            ),
            const CustomAuthTextField(
              title: "Email address",
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
      bottomNavigationBar: CustomBottomAppBar(title: "Sign up"),
    );
  }
}