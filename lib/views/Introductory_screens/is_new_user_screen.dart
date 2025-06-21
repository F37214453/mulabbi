import 'package:flutter/material.dart';
import 'package:mulabbi/services/user_service.dart';
import 'package:mulabbi/views/Introductory_screens/onboarding/onboarding_page1.dart';
import 'package:mulabbi/views/home_views/guest_home.dart';
import 'package:mulabbi/views/shell/main_scaffold.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class IsNewUserScreen extends StatefulWidget {
  const IsNewUserScreen({super.key});

  @override
  State<IsNewUserScreen> createState() => _IsNewUserScreenState();
}

class _IsNewUserScreenState extends State<IsNewUserScreen> {
  Widget route = OnboardingPage1();

  Future<User?> getCurrentUser() async {
    return await UserService.getCurrentUser();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final user = getCurrentUser();
    user.then((value) {
      if (value != null) {
        route = MainScaffold(userType: UserType.user);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return route;
  }
}
