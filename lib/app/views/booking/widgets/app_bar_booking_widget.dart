import 'package:flutter/material.dart';

class AppBarBookingWidget extends StatelessWidget {
  const AppBarBookingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff22BB9C),
              ),
            ),
            const SizedBox(width: 13.94),
            const Text(
              "Бронироване",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff171716),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
