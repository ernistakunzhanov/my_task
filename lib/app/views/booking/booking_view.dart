import 'package:buss_app/app/constants/text_styles/app_text_styles.dart';
import 'package:buss_app/app/views/booking/booking_seat_view.dart';
import 'package:buss_app/app/views/booking/widgets/app_bar_booking_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingView extends StatelessWidget {
  const BookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppBarBookingWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          top: 18,
          bottom: 18,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "14 мая 2023",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff171716),
                  ),
                ),
                const SizedBox(height: 15.0),
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
                Container(
                  margin: const EdgeInsets.only(left: 8.5),
                  alignment: Alignment.centerLeft,
                  height: 30,
                  child: SvgPicture.asset(
                    'assets/icons/line3.svg',
                  ),
                ),
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
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/empty-wallet.svg',
                          width: 16,
                          height: 16,
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          "Всего за 1 пассажира:",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff515150),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "514.80 ₽",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff22BB9C),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/bus.svg',
                          width: 32,
                          height: 32,
                        ),
                        const SizedBox(width: 16.25),
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
                    const Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Color(0xffBDBDBD),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/wifi-off.svg',
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(width: 16.25),
                    const Text(
                      "Нет Wi-Fi",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/plug-2.svg',
                      width: 16,
                      height: 16,
                    ),
                    const SizedBox(width: 16.25),
                    const Text(
                      "Нет розеток у каждого кресла",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffBDBDBD),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookingSeatView(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff22BB9C),
                fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Продолжить",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
