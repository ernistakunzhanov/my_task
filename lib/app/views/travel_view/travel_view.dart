import 'package:buss_app/app/constants/text_styles/app_text_styles.dart';
import 'package:buss_app/app/views/travel_view/widgets/scroll_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TravelView extends StatefulWidget {
  const TravelView({Key? key}) : super(key: key);

  @override
  State<TravelView> createState() => _TravelViewState();
}

class _TravelViewState extends State<TravelView> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
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
                  "Поездка",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff171716),
                  ),
                ),
              ],
            ),
            SvgPicture.asset('assets/icons/more-circle.svg'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            const Text(
              "Маршрут",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xffDADADA),
              ),
            ),
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 15,
              ),
              // height: 353,
              // width: 327,
              decoration: const BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 56,
                    width: 295,
                    // width: MediaQuery.of(context).size.width * 100,
                    decoration: const BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        right: 18,
                        left: 16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/ellipse.png'),
                              const SizedBox(width: 15),
                              const Text(
                                "Айдар",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff171716),
                                ),
                              ),
                              const SizedBox(width: 13.33),
                              SvgPicture.asset('assets/icons/star.svg'),
                              const SizedBox(width: 5.33),
                              const Text(
                                "4.5",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff171716),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('assets/icons/call-calling.svg'),
                              const SizedBox(width: 7),
                              SvgPicture.asset('assets/icons/messages-2.svg'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 44),
                    child: Column(
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
                        const SizedBox(height: 25),
                        const Row(
                          children: [
                            SizedBox(width: 30),
                            Text(
                              "200 км.",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xffBDBDBD),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 25),
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
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 45,
                    width: 295,
                    decoration: const BoxDecoration(
                      color: Color(0xffFF5959),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "Отменить бронь",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Пассажиры 2/3",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xffDADADA),
              ),
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 62,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return const ScrollCardWidget();
                  }),
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Схема рассадки в салоне",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff171716),
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Color(0xffBDBDBD),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            activeIcon: Icon(
              Icons.search_rounded,
              color: Color(0xff22BB9C),
              size: 25,
            ),
            icon: Icon(
              Icons.search_rounded,
              color: Color(0xff515150),
              size: 25,
            ),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/add-circle.svg',
              color: const Color(0xff22BB9C),
            ),
            icon: SvgPicture.asset('assets/icons/add-circle.svg'),
            label: 'Создать',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/car.svg',
              color: const Color(0xff22BB9C),
            ),
            icon: SvgPicture.asset('assets/icons/car.svg'),
            label: 'Поездки',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              'assets/icons/user.svg',
              color: const Color(0xff22BB9C),
            ),
            icon: SvgPicture.asset('assets/icons/user.svg'),
            label: 'Профиль',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xff22BB9C),
        showUnselectedLabels: true,
        unselectedItemColor: const Color(0xff515150),
        onTap: _onItemTapped,
      ),
    );
  }
}
