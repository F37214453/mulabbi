import 'package:flutter/material.dart';
import 'package:test_mulabi_2/Colors/colors.dart';

class MisbahaView extends StatefulWidget {
  const MisbahaView({super.key});

  static const fontColor = AppColorBrown.gradientPrimary;
  static const background = AppColorLight.linear;

  @override
  // ignore: library_private_types_in_public_api
  _MisbahaViewState createState() => _MisbahaViewState();
}

class _MisbahaViewState extends State<MisbahaView> {
  int counter = 0;
  final int beadsCount = 33;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Stack(
        children: [
          // الخلفية المطموسة
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/misbaha_page.png'),
                fit: BoxFit.cover,
              ),
            ),
            // ignore: deprecated_member_use
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    // ignore: deprecated_member_use
                    Color(0xFFF5F2EE).withOpacity(0.8),
                    // ignore: deprecated_member_use
                    Color.fromARGB(255, 233, 221, 206).withOpacity(1.0),
                  ],
                ),
              ),
            ),
          ),

          // المحتوى الرئيسي
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  SizedBox(
                    width: 312,
                    height: 83,
                    child: Text(
                      'سَبِّحِ ٱسْمَ رَبِّكَ ٱلْأَعْلَى',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF874F1E),
                        fontFamily: 'Uthmanic',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          counter++;
                        });
                      },
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/Sebha.png',
                            width: 370,
                            height: 450,
                          ),
                          // الذكر والنص
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 80),
                              Text(
                                'سبحان الله',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: MisbahaView.fontColor.colors[0],
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                '$counter',
                                style: TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                  color: MisbahaView.fontColor.colors[0],
                                  fontFamily: 'Cairo',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
