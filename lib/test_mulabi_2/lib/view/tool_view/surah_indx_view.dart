import 'package:flutter/material.dart';
import 'package:test_mulabi_2/widgets/surah_item.dart';

class SurahDrawer extends StatelessWidget {
  const SurahDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF9F4EF),
      child: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'فهرس السور',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  SurahItem(title: 'سورة الفاتحة', page: 1, selected: true),
                  SurahItem(title: 'سورة البقرة', page: 2, selected: false),
                  SurahItem(title: 'سورة آل عمران', page: 50, selected: false),
                  SurahItem(title: 'سورة النساء', page: 77, selected: false),
                  SurahItem(title: 'سورة المائدة', page: 106, selected: false),
                  SurahItem(title: 'سورة الأنعام', page: 128, selected: false),
                  SurahItem(title: 'سورة الأعراف', page: 151, selected: false),
                  SurahItem(title: 'سورة الأنفال', page: 177, selected: false),
                  SurahItem(title: 'سورة التوبة', page: 187, selected: false),
                  SurahItem(title: 'سورة يونس', page: 208, selected: false),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
