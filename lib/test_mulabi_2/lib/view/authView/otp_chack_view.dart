import 'package:flutter/material.dart';
import 'package:test_mulabi_2/view/authView/login_view.dart';
import 'package:test_mulabi_2/widgets/authWidgets/auth_custom.dart';
import 'package:test_mulabi_2/widgets/button_custom.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder:
          (_) => Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.verified,
                    size: 64,
                    color: Color.fromARGB(255, 115, 83, 45),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "تم تأكيد حسابك بنجاح",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: 184,
                      height: 51,
                      child: PrimaryButton(
                        text: "تسجيل الدخول",
                        color: const Color(0xFF5D4037),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      title: "تأكيد الحساب",
      child: Padding(
        padding: const EdgeInsets.only(top: 16, left: 4, right: 4, bottom: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text("أدخل رمز التحقق المرسل إلى بريدك الإلكتروني"),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(4, (index) {
                return SizedBox(
                  width: 50,
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      counterText: '',
                      border: OutlineInputBorder(),
                    ),
                  ),
                );
              }),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {},
                child: const Text("إعادة إرسال الرمز"),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: 184,
                height: 51,
                child: PrimaryButton(
                  text: "تحقق",
                  color: const Color(0xFF5D4037),
                  onPressed: () => _showSuccessDialog(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
