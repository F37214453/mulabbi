import 'package:flutter/material.dart';
import 'package:mulabbi/controllers/haramain_controller.dart';
import 'package:mulabbi/widgets/tools_widgets/haramain_custom.dart';

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
        title: const Text(
          'بث الحرمين',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Color(0xFF7E5A3B),
            fontFamily: 'AlNile', // ← matching what you wrote in pubspec
            height: 1.0,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            children: [
              HaramCard(
                title: 'المسجد \n الحرام',
                imagePath: 'assets/images/haramain_live_makkah.png',
                videoId: '-BlZnoDjxmM',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => LiveStreamPage(
                            videoId: '-BlZnoDjxmM',
                            title: 'المسجد الحرام',
                          ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              HaramCard(
                title: 'المسجد \n النبوي',
                imagePath: 'assets/images/haramain_live_madinah.png',

                videoId: 'jgN8Aw0sP9A',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (context) => LiveStreamPage(
                            videoId: 'jgN8Aw0sP9A',
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
