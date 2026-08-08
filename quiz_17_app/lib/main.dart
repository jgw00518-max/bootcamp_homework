import 'package:quiz_17_app/view/table_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_17_app/view/detail_list.dart';
import 'package:quiz_17_app/view/insert_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // 앱 전체 기준 색상
  static const seedColor = Colors.deepPurple;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // 테마 설정
      theme: ThemeData(
        colorSchemeSeed: seedColor,
        brightness: Brightness.light,
        useMaterial3: true,
      ),
      // 라우트 초기 경로 지정
      initialRoute: "/",
      getPages: [
        GetPage(
          name: "/",
          page: () => const TableList(),
        ),
        GetPage(
          name: "/insert",
          page: () => const InsertList(),
        ),
        GetPage(
          name: "/detail",
          page: () => const DetailList(),
        ),
      ],
    );
  }
}