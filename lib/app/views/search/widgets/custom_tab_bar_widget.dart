import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final String title;
  final int titleNum;
  const CustomTabBar({
    required this.title,
    required this.titleNum,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xff515150),
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            titleNum.toString(),
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff515150),
            ),
          ),
        ],
      ),
    );
  }
}
