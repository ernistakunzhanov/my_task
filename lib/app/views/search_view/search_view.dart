import 'package:buss_app/app/views/search_view/widgets/custom_card.dart';
import 'package:buss_app/app/views/search_view/widgets/custom_tab_bar_widget.dart';
import 'package:buss_app/app/views/search_view/widgets/search_widget.dart';
import 'package:buss_app/app/views/travel_view/travel_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150.0),
        child: DefaultTabController(
          length: 3,
          child: AppBar(
            elevation: 0,
            toolbarHeight: 150,
            title: const SearchWidget(),
            bottom: const TabBar(
              indicatorColor: Color(0xff22BB9C),
              labelColor: Color(0xff22BB9C),
              unselectedLabelColor: Color(0xff515150),
              padding: EdgeInsets.symmetric(horizontal: 20),
              tabs: [
                Tab(child: CustomTabBar(title: 'Всё', titleNum: 112)),
                Tab(child: CustomTabBar(title: 'С попутчиками', titleNum: 105)),
                Tab(child: CustomTabBar(title: 'На автобусе', titleNum: 7)),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
            return CustomCard(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TravelView()));
              },
            );
          }),
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
