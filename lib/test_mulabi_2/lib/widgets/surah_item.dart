import 'package:flutter/material.dart';

class SurahItem extends StatelessWidget {
  final String title;
  final int page;
  final bool selected;

  const SurahItem({
    super.key,
    required this.title,
    required this.page,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: selected ? const Color(0xFFDCC3A1) : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.brown.shade200),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.brown.shade900,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Text('صفحة ($page)'),
        onTap: () {
          // ضع منطق الانتقال للسورة هنا
          Navigator.pop(context);
        },
      ),
    );
  }
}
