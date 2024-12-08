import 'package:alv_pong/theme/theme.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(TableTennisApp());
}

class TableTennisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alv Pong',
      theme: alvThemeData,
      home: HomeScreen(),
    );
  }
}
