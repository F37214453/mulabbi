import 'package:flutter/material.dart';
import 'package:test_mulabi_2/view/tool_view/surah_indx_view.dart';
import 'package:test_mulabi_2/widgets/navButton_widget.dart';

class QuranPageView extends StatelessWidget {
  const QuranPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F4EF),
      endDrawer: const SurahDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          color: Color(0xFF7E5A3B),
          onPressed: () {}, // ضع منطق الرجوع هنا
        ),
        actions: [
          Builder(
            builder:
                (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  color: Color(0xFF7E5A3B),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          'سورة الفاتحة',
          style: TextStyle(
            color: Color(0xFF7E5A3B),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          //Image.asset('assets/decoration.png'), // زخرفة بين العنوان والمحتوى
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              '﷽\n\nبِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ\nالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ\nالرَّحْمَٰنِ الرَّحِيمِ\nمَالِكِ يَوْمِ الدِّينِ\nإِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ\nاهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ\nصِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, height: 2.2, color: Colors.black),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavigationButton(
                icon: Icons.chevron_left,
                label: 'الصفحة التالية',
                onTap: () {}, // ضع منطق التقدم هنا
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.all(color: Colors.brown.shade200),
                ),
                child: const Text('1', style: TextStyle(fontSize: 16)),
              ),
              NavigationButton(
                label: 'الصفحة السابقة',
                icon: Icons.chevron_right,
                onTap: () {}, //logic Getx or what ever
              ),
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
