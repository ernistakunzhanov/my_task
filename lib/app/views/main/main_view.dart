import 'package:buss_app/app/views/profile/profile_view.dart';
import 'package:buss_app/app/views/search/search_view.dart';
import 'package:buss_app/app/views/trips/trips_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _screenSelectedIndex = 0;
  final List<Widget> _tabs = [
    const SearchView(),
    const ProfileView(),
    const TripsView(),
    const ProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_screenSelectedIndex],
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
        currentIndex: _screenSelectedIndex,
        selectedItemColor: const Color(0xff22BB9C),
        showUnselectedLabels: true,
        unselectedItemColor: const Color(0xff515150),
        onTap: (index) {
          setState(() {
            _screenSelectedIndex = index;
          });
        },
      ),
    );
  }
}
