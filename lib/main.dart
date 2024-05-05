import 'package:bach_hoa_xanh/common/color_extension.dart';
import 'package:bach_hoa_xanh/view/main_tabview/main_tabview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BÁCH HÓA XANH',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Gilroy",
          colorScheme: ColorScheme.fromSeed(seedColor: DColor.primary),
          useMaterial3: false,
        ),
        home: const MainTabView());
  }
}
