class Adhkar {
  final String text;
  final String repeat;

  Adhkar({required this.text, required this.repeat});

  factory Adhkar.fromJson(Map<String, dynamic> json) {
    return Adhkar(text: json['text'] ?? '', repeat: json['repeat'] ?? '');
  }
}

class AdhkarSection {
  final String sectionName;
  final List<Adhkar> adhkar;

  AdhkarSection({required this.sectionName, required this.adhkar});
}
