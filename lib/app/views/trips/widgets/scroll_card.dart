import 'package:flutter/material.dart';

class ScrollCard extends StatelessWidget {
  final Color bgColor;
  final Color? borderColor;
  final Widget child;
  const ScrollCard({
    super.key,
    required this.bgColor,
    required this.child,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 180,
      decoration: BoxDecoration(
          color: bgColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          border: Border.all(
            color: borderColor ?? Color(0xffffffff),
          )),
      child: child,
    );
  }
}
