import 'package:flutter/material.dart';
import 'package:mulabbi/views/home_views/guest_home.dart';
import 'package:mulabbi/views/settings_views/guest_settings%20page.dart';
import 'package:mulabbi/views/shell/bottom_nav_bar.dart';
import 'package:mulabbi/views/home_views/user_home.dart';
import 'package:mulabbi/views/track_views/guest_track.dart';
import 'package:mulabbi/views/home_views/journey_home.dart';
import 'package:mulabbi/views/settings_views/settings_page.dart';
import 'package:mulabbi/views/zad_views/zad_page_view.dart';
import 'package:mulabbi/widgets/track_widgets/track_fallaback_not_authorized.dart';
import 'package:mulabbi/widgets/track_widgets/track_fallback_non_active.dart';

enum UserType { guest, user, onJourney }

class MainScaffold extends StatefulWidget {
  final UserType userType;

  const MainScaffold({super.key, required this.userType});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _selectedIndex = 3;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0: // الإعدادات
        return switch (widget.userType) {
          UserType.guest => const GuestSettingsPage(),
          _ => const SettingsPage(), // covers user & onJourney
        };
      case 1: // زاد
        return ZadPageView();
      case 2: // المسار
        return switch (widget.userType) {
          UserType.guest => const GuestTrack(),
          UserType.user => const TrackFallabackNotAuthorized(),
          UserType.onJourney => const TrackFallbackNonActive(),
        };

      case 3: // الرئيسية
        return switch (widget.userType) {
          UserType.guest => const GuestHome(),
          UserType.user => const UserHome(),
          UserType.onJourney => const JourneyHome(),
        };
      default:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getPage(_selectedIndex),
      bottomNavigationBar: MulabbiBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
