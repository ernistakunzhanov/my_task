import 'package:buss_app/app/constants/text_styles/app_text_styles.dart';
import 'package:buss_app/app/views/booking/widgets/app_bar_booking_widget.dart';
import 'package:buss_app/app/views/booking/widgets/select_card_widget.dart';
import 'package:flutter/material.dart';

class BookingSeatView extends StatefulWidget {
  const BookingSeatView({Key? key}) : super(key: key);

  @override
  _BookingSeatViewState createState() => _BookingSeatViewState();
}

class _BookingSeatViewState extends State<BookingSeatView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppBarBookingWidget(),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Container(
                    height: 60,
                    // width: MediaQuery.of(context).size.width * 100,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(
                          color: const Color(0xffF5F5F5),
                          width: 2,
                        )),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        right: 16,
                        left: 18,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Казань - Нижнекамск",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff171716),
                                ),
                              ),
                              Text(
                                "14.05.2023, 1 пассажир, 514.80 ₽",
                                style: AppTextStyles.grey12,
                              ),
                            ],
                          ),
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xff22BB9C),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Выберите места на схеме автобуса",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffBDBDBD),
                  ),
                ),
                const SizedBox(height: 4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Автобус:",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff22BB9C),
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      "ХЕНДАЙ (43)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff515150),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 18,
                      width: 18,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(
                            Radius.circular(4),
                          ),
                          border: Border.all(
                            color: const Color(0xff22BB9C),
                          )),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "свободное",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff515150),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Container(
                      height: 18,
                      width: 18,
                      decoration: const BoxDecoration(
                        color: Color(0xffEBEBEB),
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      "занятое",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff515150),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                      border: Border.all(
                        color: const Color(0xffDADADA),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/car-steering-wheel.png',
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: 100,
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                  ),
                                  itemCount: 12,
                                  itemBuilder: (context, index) {
                                    final item = number[index];
                                    return Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                      child: SelectCardWidget(
                                        number: item,
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                  ),
                                  itemCount: 12,
                                  itemBuilder: (context, index) {
                                    final item = number2[index];
                                    return Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 4, 4, 4),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        color: const Color(0xffEBEBEB),
                                        child: SelectCardWidget(number: item),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 20,
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff22BB9C),
            fixedSize: Size(MediaQuery.of(context).size.width * 0.9, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Выбрано место: 4",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff),
                ),
              ),
              Text(
                "Далее",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffffffff),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List number = <int>[1, 2, 5, 6, 9, 10, 13, 14, 17, 18, 21, 22];
List number2 = <int>[3, 4, 7, 8, 11, 12, 15, 16, 19, 20, 23, 24];
