import 'package:flutter/material.dart';
import 'package:test_mulabi_2/view/navigation_view/home_page_view.dart';
import 'package:test_mulabi_2/view/navigation_view/setting_page_view.dart';
import 'package:test_mulabi_2/view/navigation_view/zad_page_view.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  List view = [HomeView(), ZadView(), SettingView()];
  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.menu_book_rounded), label: 'Zad'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
  ];

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view.elementAt(index),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 227, 227, 227),
        backgroundColor: Color(0xFF8B5E3C),
      ),
    );
  }
}
