import 'package:flutter/material.dart';
import 'package:mulabbi/core/colors.dart';

class TrackFallabackNotAuthorized extends StatelessWidget {
  const TrackFallabackNotAuthorized({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "assets/images/steps-background.png",
          fit: BoxFit.cover,
          width: 600,
        ),
        Column(
          spacing: 8,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback:
                  (bounds) =>
                      AppColorBrown.gradientPrimary.createShader(bounds),
              child: Text(
                "تحتاج الى تسجيل الدخول",
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "سجل دخولك لمتابعة مناسكك\nخطوة بخطوة عند بدء رحلتك",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, color: Colors.black87),
            ),
            SizedBox(height: 24),
            InkWell(
              onTap: () {
                // Redirect to Signin
              },
              child: Container(
                width: 246,
                height: 58,
                decoration: BoxDecoration(
                  gradient: AppColorBrown.gradientBrown,
                  borderRadius: BorderRadius.circular(66),
                ),
                child: Center(
                  child: Text(
                    "تسجيل الدخول",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                // Redirect to Signup page
              },
              child: Text(
                "إنشاء حساب جديد",
                style: TextStyle(color: Color(0xFF734218)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
