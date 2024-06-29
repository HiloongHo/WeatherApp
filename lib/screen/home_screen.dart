import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/global_controller.dart';
import '../widgets/header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // 使用GetX库创建一个全局且永久的GlobalController实例
  final GlobalController globalController = Get.put(
      // 实例化GlobalController
      GlobalController(),
      // 设置permanent为true，确保该Controller在整个应用生命周期内保持活跃，
      // 即使页面切换，也能保持状态，适合管理应用级别的状态信息
      permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Obx(() => globalController.checkLoading().isTrue
              ? const Center(child: CircularProgressIndicator())
              : ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    SizedBox(height: 20),
                    HeaderWidget(),
                  ],
                ))),
    );
  }
}
