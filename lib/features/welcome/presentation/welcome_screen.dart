import 'package:flutter/material.dart';
import 'package:test_appeorem/constants/theme.dart';
import 'package:test_appeorem/features/authentication/presentation/get_started_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.21, -0.98),
                  end: Alignment(-0.21, 0.98),
                  colors: [Color(0xFFB0A3E5), Color(0xFF7661C5)],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 60
            ,child: Image.asset("assets/welcome_background_men.png")),
          Positioned(
              bottom: 40,
              left: 40,
              right: 40,
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    color: Colors.white),
                child: Column(
                  children: [
                    const Text(
                      'Look Good, Feel Good',
                      style: TextStyle(
                        color: primaryTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Create your individual & unique style and look amazing everyday.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: secondaryTextColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              color: secondaryColor,
                            ),
                            child: const Center(
                                child: Text(
                              'Men',
                              style: TextStyle(
                                color: secondaryTextColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: const ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              color: primaryColor,
                            ),
                            child: const Center(
                                child: Text(
                              'Women',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const GetStartedScreen()));
                      },
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: secondaryTextColor,
                          fontSize: 15,
                          
                          fontWeight: FontWeight.w500,
                         
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
