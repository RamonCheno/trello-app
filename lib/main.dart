import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:trello_app/app/routes/app_pages.dart';

// import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Trello app",
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
