// lib/controllers/adhkar_controller.dart
import 'package:get/get.dart';
import '../data/adhkar_data.dart';
import '../models/adhkar_model.dart';

class AdhkarController extends GetxController {
  final RxList<AdhkarSection> sections = <AdhkarSection>[].obs;
  final RxInt expandedIndices = (-1).obs;
  final RxBool isLoading = true.obs;
  final RxBool isExpanded = false.obs;

  @override
  void onInit() {
    loadAdhkar();
    super.onInit();
  }

  void loadAdhkar() {
    final List<AdhkarSection> loadedSections = [];

    adhkarRawData.forEach((key, value) {
      final adhkarList = value.map((e) => Adhkar.fromJson(e)).toList();
      loadedSections.add(AdhkarSection(sectionName: key, adhkar: adhkarList));
    });

    sections.value = loadedSections;
    isLoading.value = false; // ← تم تحميل البيانات
  }

  void toggleSection(int index) {
    if (expandedIndices.value == index) {
      // isExpanded!.value = expandedIndices.value == index;
      print("Collapsing section: $index");
      expandedIndices.value = -1;
      isExpanded.value = false;
    } else {
      print("Expanding section: $index");
      expandedIndices.value = index;
      isExpanded.value = true;
      // isExpanded!.value = expandedIndices.value == index;
    }
  }
}
