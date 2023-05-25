import 'package:buss_app/app/views/travel_view/widgets/scroll_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScrollCardWidget extends StatelessWidget {
  const ScrollCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ScrollCard(
          bgColor: const Color(0xffFFFFFF),
          borderColor: const Color(0xff22BB9C),
          child: Row(
            children: [
              const SizedBox(width: 16),
              CircleAvatar(
                backgroundColor: const Color(0xffF5F5F5),
                child: SvgPicture.asset(
                  'assets/icons/profile-add.svg',
                  height: 30,
                ),
              ),
              const SizedBox(width: 12),
              const Text(
                "Место свободно",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff515150),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 18),
        ScrollCard(
          bgColor: const Color(0xffFFFFFF),
          child: Row(
            children: [
              const SizedBox(width: 16),
              CircleAvatar(
                backgroundColor: const Color(0xffF5F5F5),
                child: Image.asset(
                  'assets/images/ellipse.png',
                ),
              ),
              const SizedBox(width: 12),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Ronald Richards",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    "2 места",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff515150),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
