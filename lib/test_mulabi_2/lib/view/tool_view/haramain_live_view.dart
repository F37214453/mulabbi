import 'package:flutter/material.dart';
import 'package:test_mulabi_2/controller/haramain_controller.dart';
import 'package:test_mulabi_2/widgets/haramain_custom.dart';

class HaramBroadcastPage extends StatelessWidget {
  const HaramBroadcastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFFAF7F2),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF5D4037)),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'بث الحرمين',
          style: TextStyle(
            color: Color(0xFF5D4037),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'Cairo',
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            children: [
              HaramCard(
                title: 'المسجد \n الحرام',
                imagePath: 'assets/haramain_live_makkah.png',
                videoId: 'jY--Ad8r7bU?si=M9ON9PpJdvTQkhX2',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => LiveStreamPage(
                            videoId: 'jY--Ad8r7bU?si=M9ON9PpJdvTQkhX2',
                            title: 'المسجد الحرام',
                          ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              HaramCard(
                title: 'المسجد \n النبوي',
                imagePath: 'assets/haramain_live_madinah.png',
                videoId: '4Te75bLYG0c?si=TfLRRs7V1BRq-Gki',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => LiveStreamPage(
                            videoId: '4Te75bLYG0c?si=TfLRRs7V1BRq-Gki',
                            title: 'المسجد النبوي',
                          ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
