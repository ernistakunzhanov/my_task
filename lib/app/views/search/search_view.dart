import 'package:buss_app/app/views/booking/booking_view.dart';
import 'package:buss_app/app/views/search/widgets/custom_card.dart';
import 'package:buss_app/app/views/search/widgets/custom_tab_bar_widget.dart';
import 'package:buss_app/app/views/search/widgets/search_widget.dart';
import 'package:buss_app/app/views/trips/trips_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BookingView()));
              },
            );
          }),
    );
  }
}
