import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_mulabi_2/Colors/colors.dart';
import 'package:test_mulabi_2/controller/adhkar_controller.dart';

class AdhkarView extends StatefulWidget {
  const AdhkarView({super.key});

  static const fontColor = AppColorBrown.gradientBrown;

  @override
  State<AdhkarView> createState() => _AdhkarViewState();
}

class _AdhkarViewState extends State<AdhkarView> {
  final AdhkarController controller = Get.put(AdhkarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'الأذكار',
          style: TextStyle(color: Color(0xFF7E5A3B)),
        ),
        centerTitle: true,
        actions: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Color(0xFF7E5A3B),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 225, 218, 209),
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: controller.sections.length,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            itemBuilder: (context, index) {
              final section = controller.sections[index];
              // final controller.isExpanded = controller.expandedIndices.value == index;
              print(index);

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
                        gradient:
                            AppColorBrown.carfBrown, // Use a solid color here
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
                            controller.isExpanded.value
                                ? Icons.expand_less
                                : Icons.expand_more,
                            color: const Color.fromARGB(255, 232, 232, 232),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (controller.isExpanded.value &&
                      controller.expandedIndices.value == index)
                    Obx(
                      () => AnimatedCrossFade(
                        firstChild: const SizedBox.shrink(),
                        secondChild: Column(
                          children:
                              section.adhkar.map((adhkar) {
                                return Container(
                                  width: double.infinity,
                                  margin: const EdgeInsets.only(bottom: 8),
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                      152,
                                      218,
                                      201,
                                      178,
                                    ),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        adhkar.text,
                                        style: TextStyle(
                                          color: AdhkarView.fontColor.colors[0],
                                          fontSize: 16,
                                          height: 1.6,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        adhkar.repeat,
                                        style: TextStyle(
                                          color: AdhkarView.fontColor.colors[0],
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.right,
                                      ),
                                      const SizedBox(height: 8),
                                      Text(
                                        adhkar.repeat,
                                        style: TextStyle(
                                          color: AdhkarView.fontColor.colors[0],
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
                            controller.isExpanded.value
                                ? CrossFadeState.showSecond
                                : CrossFadeState.showFirst,
                        duration: const Duration(milliseconds: 100),
                      ),
                    ),
                ],
              );
            },
          );
        }),
      ),
    );
  }
}
