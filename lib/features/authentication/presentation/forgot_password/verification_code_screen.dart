import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/authentication/presentation/forgot_password/new_password_screen.dart';
import 'package:test_appeorem/features/authentication/presentation/widget/custom_atuh_text_field.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: ""),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Verification Code',
              style: TextStyle(
                color: primaryTextColor,
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            SvgPicture.asset("assets/svg/forgot_password.svg"),
            Row(
              children: [
                Expanded(child: TextField(
                  inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                    ),
                )),
                SizedBox(width: 6,),
                Expanded(child: TextField(
                  inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                    ),
                )),
                SizedBox(width: 6,),
                Expanded(child: TextField(
                  inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                    ),
                )),
                SizedBox(width: 6,),
                Expanded(child: TextField(
                  inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(1),
                    ],
                    decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8)))
                    ),
                )),                
              ],
            ),
            const Spacer(),
            const Text.rich(
                TextSpan(
                    children: [
                      TextSpan(
                            text: '00:20',
                            style: TextStyle(
                                color: primaryTextColor,
                                fontSize: 13,
                            
                                fontWeight: FontWeight.w400,
                                
                            ),
                        ),
                        TextSpan(
                            text: ' resend confirmation code.',
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
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NewPasswordScreen()));
        },
        child: const CustomBottomAppBar(title: "Confirm code")),
    );
  }
}
