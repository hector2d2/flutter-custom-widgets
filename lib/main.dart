import 'package:exploracion_paquetes/app/pages/home/home_page.dart';
import 'package:exploracion_paquetes/app/pages/pinned_shortcut/pinned_shortcut_page.dart';
import 'package:flutter/material.dart';

import 'app/services/pinned_shortcur_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      home: HomePage(),
    );
  }
}