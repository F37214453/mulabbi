// ignore: file_names
import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const NavigationButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      icon: Icon(icon, color: Colors.brown.shade900),
      label: Text(label, style: TextStyle(color: Colors.brown.shade900)),
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFDCC3A1),
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
