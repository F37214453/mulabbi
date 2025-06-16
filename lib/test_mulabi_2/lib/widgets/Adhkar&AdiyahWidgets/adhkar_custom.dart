import 'package:flutter/material.dart';

class AdhkarCard extends StatelessWidget {
  final String text;
  final String repeat;

  const AdhkarCard({super.key, required this.text, required this.repeat});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // لمحاذاة اليمين في العربية
      children: [
        // صندوق الذكر نفسه
        Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFDAC9B2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            text,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              fontWeight: FontWeight.w500,
              color: Color(0xFFA27655),
            ),
          ),
        ),
        // التكرار خارج الصندوق
        Padding(
          padding: const EdgeInsets.only(right: 12.0, bottom: 4),
          child: Text(
            ' $repeat',
            style: TextStyle(
              fontSize: 14,
              color: Color(0xFFA27655),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
