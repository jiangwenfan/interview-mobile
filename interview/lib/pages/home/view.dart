import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'controller.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home页面'),
        centerTitle: true,
        // #f3f2f6
        backgroundColor: const Color(0xFFF3F2F6),
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentTabIndex.value,
          onTap: (index) {
            controller.currentTabIndex.value = index;
            logger.i("底部tab被点击,索引:$index");
          },
          items: controller.tabs,
        ),
      ),
      body: Obx(() => controller.tabsWidget[controller.currentTabIndex.value]),
    );
  }
}
