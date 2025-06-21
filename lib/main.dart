import 'package:flutter/material.dart';
import 'package:mulabbi/views/settings_views/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: MainScaffold(userType: UserType.guest),
      // home: OnboardingPage1(),
      home: SettingsPage(),
    );
  }
}
