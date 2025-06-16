import 'package:flutter/material.dart';
import 'package:test_mulabi_2/view/authView/create_account_view.dart';
import 'package:test_mulabi_2/widgets/authWidgets/auth_custom.dart';
import 'package:test_mulabi_2/widgets/button_custom.dart';
import 'package:test_mulabi_2/widgets/social_widget.dart';
import 'package:test_mulabi_2/widgets/textfield_custom.dart';
import 'package:test_mulabi_2/Colors/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const buttonColor = AppColorBrown.gradient;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return AuthContainer(
      title: "تسجيل الدخول",
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(height: 16),
              const CustomTextField(
                label: "البريد الإلكتروني",
                hint: "أدخل بريدك الإلكتروني",
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 12),
              const CustomTextField(
                label: "كلمة المرور",
                hint: "••••••••",
                obscureText: true,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "نسيت كلمة المرور؟",
                      style: TextStyle(
                        color: Color(0xFF69494B),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _rememberMe = value ?? false;
                      });
                    },
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF734218),
                  ),
                  const Text(
                    'تذكرني',
                    style: TextStyle(color: Color(0xFF734218)),
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: PrimaryButton(
                    text: "تسجيل",
                    color: const Color(0xFF5D4037),
                    onPressed: () {},
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "إنشاء حساب",
                      style: TextStyle(
                        color: Color(0xFF8D511E),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const Text(
                    'لا تمتلك حساب؟',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: const [
                  Expanded(
                    child: Divider(color: Color.fromARGB(172, 126, 90, 59)),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      'أو',
                      style: TextStyle(color: Color(0xFF7E5A3B)),
                    ),
                  ),
                  Expanded(
                    child: Divider(color: Color.fromARGB(172, 126, 90, 59)),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialIconButton(onTap: () {}, icon: const Icon(Icons.apple)),
                  const SizedBox(width: 24),
                  SocialIconButton(onTap: () {}, icon: Icon(Icons.facebook)),
                  const SizedBox(width: 24),
                  SocialIconButton(
                    onTap: () {},
                    icon: Icon(Icons.g_mobiledata),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
