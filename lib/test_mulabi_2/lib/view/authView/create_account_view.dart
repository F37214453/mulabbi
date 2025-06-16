import 'package:flutter/material.dart';
import 'package:test_mulabi_2/view/authView/login_view.dart';
import 'package:test_mulabi_2/view/authView/otp_chack_view.dart';
import 'package:test_mulabi_2/widgets/authWidgets/auth_custom.dart';
import 'package:test_mulabi_2/widgets/button_custom.dart';
import 'package:test_mulabi_2/widgets/textfield_custom.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      title: "إنشاء حساب",
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 4, right: 4, bottom: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const CustomTextField(
              label: "الاسم الكامل",
              hint: "أدخل اسمك الكامل",
            ),
            const CustomTextField(
              label: "البريد الإلكتروني",
              hint: "أدخل بريدك الإلكتروني",
              keyboardType: TextInputType.emailAddress,
            ),
            const CustomTextField(
              label: "كلمة المرور",
              hint: "••••••••",
              obscureText: true,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 184,
                height: 51,
                child: PrimaryButton(
                  text: "تسجيل",
                  color: const Color(0xFF5D4037),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OtpScreen(),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text("لديك حساب؟ تسجيل الدخول"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
