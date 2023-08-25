import 'package:flutter/material.dart';
import 'package:flutter_application_examen/screen_views/menu.dart';
import 'package:flutter_application_examen/screen_views/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Menu(),
      theme: AppTheme.lightTheme,
    );
  }
}
