// controllers/duaa_controller.dart

import 'package:get/get.dart';
import 'package:test_mulabi_2/data/adiyah_data.dart';
import '../models/dua_model.dart';

class DuaaController extends GetxController {
  final RxList<DuaaSection> sections = <DuaaSection>[].obs;
  final RxList<int> expandedIndices = <int>[].obs; // لمتابعة القسم المفتوح

  @override
  void onInit() {
    super.onInit();
    loadDuas();
  }

  void loadDuas() {
    final List<DuaaSection> loaded = [];

    duaaRawData.forEach((key, value) {
      final duaas = value.map((e) => Duaa.fromJson(e)).toList();
      loaded.add(DuaaSection(sectionName: key, duas: duaas));
    });

    sections.value = loaded;
  }

  void toggleSection(int index) {
    if (expandedIndices.contains(index)) {
      expandedIndices.remove(index);
    } else {
      expandedIndices.add(index);
    }
  }
}
