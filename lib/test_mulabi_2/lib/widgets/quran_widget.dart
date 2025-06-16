import 'package:flutter/material.dart';

class QuranPageContent extends StatelessWidget {
  const QuranPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text('﷽', style: TextStyle(fontSize: 24)),
        SizedBox(height: 16),
        Text(
          '''بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ
الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ
الرَّحْمَٰنِ الرَّحِيمِ
مَالِكِ يَوْمِ الدِّينِ
إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ
اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ
صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ''',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, height: 2),
        ),
      ],
    );
  }
}
