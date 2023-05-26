import 'package:flutter/material.dart';

class SelectCardWidget extends StatefulWidget {
  final int number;
  const SelectCardWidget({
    super.key,
    required this.number,
  });

  @override
  State<SelectCardWidget> createState() => _SelectCardWidgetState();
}

class _SelectCardWidgetState extends State<SelectCardWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        isSelected = !isSelected;
        setState(() {});
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: !isSelected ? const Color(0xffEBEBEB) : Colors.white,
          borderRadius: BorderRadius.circular(4),
          border:
              !isSelected ? null : Border.all(color: const Color(0xff22BB9C)),
        ),
        child: Center(
            child: Text(
          widget.number.toString(),
          style: TextStyle(
            fontSize: 14,
            color:
                isSelected ? const Color(0xff000000) : const Color(0xffBDBDBD),
            fontWeight: FontWeight.w500,
          ),
        )),
      ),
    );
  }
}
