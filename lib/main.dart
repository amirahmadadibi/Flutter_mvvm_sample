import 'package:flutter/material.dart';
import 'package:flutter_mvvm_basic_sample/di/service_locator.dart';
import 'package:flutter_mvvm_basic_sample/view/coinlist_screen.dart';

void main() {
  initServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CoinListScreen(),
    );
  }
}
