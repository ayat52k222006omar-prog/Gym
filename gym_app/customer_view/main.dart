import 'package:flutter/material.dart';
import 'package:get/get.dart';

// استيراد الكنترولر الخاص بالبار لضمان عمل السلة بشكل صحيح

import 'package:myfirstapp/gym_app/customer_view/features/gym_bar/bar_controller/barcart_controller.dart';

// استيراد الصفحة الرئيسية (أو يمكنك تغييرها للصفحة التي تريدينها أن تبدأ أولاً)
import 'package:myfirstapp/gym_app/customer_view/features/home_page.dart'; 
// لو كنتِ ترغبين أن تبدأ صفحة السلة أو غيرها، استبدلي الاستيراد أعلاه وضع صفحتك هنا

void main() {
  // حقن وتسجيل الكنترولر الموحد للبار منذ بداية التطبيق ليعمل في كل الصفحات
  Get.put(BarcartController());
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gym App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      // هنا تحددين أول صفحة تفتح عند تشغيل التطبيق
      home: const CustomerHome(), 
    );
  }
}