import 'package:flutter/material.dart';
import 'package:oynani_scroll_qilish/always_scroll_physics_ex.dart';
import 'package:oynani_scroll_qilish/home_screen.dart';
import 'package:oynani_scroll_qilish/never_scroll_physics.dart';
import 'package:oynani_scroll_qilish/utils/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}
