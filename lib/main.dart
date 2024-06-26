import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:weatherapp_starter_project/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomeScreen(),
      title: "天气",
      debugShowCheckedModeBanner: false,
    );
  }
}
