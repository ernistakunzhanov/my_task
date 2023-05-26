import 'package:buss_app/app/views/main/main_view.dart';
import 'package:buss_app/app/views/search/search_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BussApp());
}

class BussApp extends StatelessWidget {
  const BussApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainView(),
    );
  }
}
