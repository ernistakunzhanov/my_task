import 'package:buss_app/app/constants/text_styles/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomCard extends StatelessWidget {
  final Function()? onTap;
  const CustomCard({
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        padding: const EdgeInsets.all(16),
        // height: 189,
        // width: 327,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/circle-point.svg',
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Казань",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff171716),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "27 мая, 15:00",
                              style: AppTextStyles.grey14,
                            ),
                            const SizedBox(width: 5),
                            SvgPicture.asset(
                              'assets/icons/dot.svg',
                              height: 5,
                              width: 5,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              "Автовокзал",
                              style: AppTextStyles.grey14,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Text(
                  "514.80 ₽",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff22BB9C),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 8.5),
              alignment: Alignment.centerLeft,
              height: 30,
              child: SvgPicture.asset(
                'assets/icons/line3.svg',
              ),
            ),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.baseline,
              // textBaseline: TextBaseline.ideographic,
              children: [
                SvgPicture.asset(
                  'assets/icons/circle-point.svg',
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Нижнекамск",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff171716),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "28 мая, 15:00",
                          style: AppTextStyles.grey14,
                        ),
                        const SizedBox(width: 5),
                        SvgPicture.asset(
                          'assets/icons/dot.svg',
                          height: 5,
                          width: 5,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          "Автовокзал",
                          style: AppTextStyles.grey14,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/bus1.svg',
                    ),
                    const SizedBox(width: 13.37),
                    const Text(
                      "ООО “БУРЕВЕСТНИК”",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff515150),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 5),
                SvgPicture.asset(
                  'assets/icons/qr-code.svg',
                  height: 24,
                  width: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
