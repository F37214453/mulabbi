// models/duaa_model.dart

class Duaa {
  final String text;
  final String title;

  Duaa({required this.text, required this.title});

  factory Duaa.fromJson(Map<String, dynamic> json) {
    return Duaa(text: json['text'] ?? '', title: json['title'] ?? '');
  }
}

class DuaaSection {
  final String sectionName;
  final List<Duaa> duas;

  DuaaSection({required this.sectionName, required this.duas});
}
