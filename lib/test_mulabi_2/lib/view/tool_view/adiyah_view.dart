import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mulabi_2/controller/dua_controller.dart';

class DuaaView extends StatefulWidget {
  const DuaaView({super.key});

  @override
  State<DuaaView> createState() => _DuaaViewState();
}

class _DuaaViewState extends State<DuaaView> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DuaaController());

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text('الأدعية'),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      backgroundColor: const Color(0xFFF5F2EE),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.sections.length,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          itemBuilder: (context, index) {
            final section = controller.sections[index];
            final isExpanded = controller.expandedIndices.contains(index);

            return Column(
              children: [
                // العنوان القابل للضغط
                GestureDetector(
                  onTap: () => controller.toggleSection(index),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFF7E573B),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          section.sectionName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          isExpanded ? Icons.expand_less : Icons.expand_more,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),

                // الأدعية داخل الصندوق
                AnimatedCrossFade(
                  firstChild: const SizedBox.shrink(),
                  secondChild: Column(
                    children:
                        section.duas.map((duaa) {
                          return Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(bottom: 8),
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: const Color(0xFFDAC9B2),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  duaa.text,
                                  style: const TextStyle(
                                    color: Color(0xFFA27655),
                                    fontSize: 16,
                                    height: 1.6,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  duaa.title,
                                  style: const TextStyle(
                                    color: Color(0xFFA27655),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                  ),
                  crossFadeState:
                      isExpanded
                          ? CrossFadeState.showSecond
                          : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
