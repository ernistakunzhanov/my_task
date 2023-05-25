import 'package:buss_app/app/views/booking/booking_view.dart';
import 'package:buss_app/app/views/search_view/search_view.dart';
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
      home: const SearchView(),
    );
  }
}
