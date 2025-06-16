import 'package:flutter/material.dart';

class CustomAdiyahCard extends StatelessWidget {
  final String title;
  final String content;

  const CustomAdiyahCard({
    required this.title,
    required this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFDAC9B2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title.isNotEmpty)
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF795547),
                fontSize: 16,
              ),
            ),
          if (title.isNotEmpty) const SizedBox(height: 8),
          Text(
            content,
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF795547),
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
