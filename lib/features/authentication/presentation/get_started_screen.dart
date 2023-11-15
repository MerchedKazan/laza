import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/custom_widgets/common_appbar.dart';
import 'package:test_appeorem/custom_widgets/custom_common_appbar.dart';
import 'package:test_appeorem/features/authentication/presentation/login/login_screen.dart';
import 'package:test_appeorem/features/authentication/presentation/register/register_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(title: ""),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              'Let’s Get Started',
              style: TextStyle(
                color: Color(0xFF1D1E20),
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Color(0xFF4267B2),
              ),
              child:const  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("f ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                  Text("Facebook",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Color(0xFF1DA1F2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/svg/twitter.svg"),
                  Text("Twitter",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                color: Color(0xFFEA4335),
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/svg/google.svg"),
                  Text(
                "Google",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
                ],
              ),
            ),
            const Spacer(),
            Text.rich(
    TextSpan(
        children: [
            TextSpan(
                text: 'Already have an account? ',
                style: TextStyle(
                    color: secondaryTextColor,
                    fontSize: 15,
                    
                    fontWeight: FontWeight.w400,
                    
                ),
            ),
            TextSpan(
                text: 'Signin',
                style: TextStyle(
                    color: primaryTextColor,
                    fontSize: 15,
                    
                    fontWeight: FontWeight.w500,
                    
                ),
                recognizer: TapGestureRecognizer()..onTap=(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginScreen()));
                }
            ),
        ],
    ),
)
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: (){
Navigator.of(context).push(MaterialPageRoute(builder: (_)=>RegisterScreen()));
        },
        child: CustomBottomAppBar(title: "Create an account")),
    );
  }
}
