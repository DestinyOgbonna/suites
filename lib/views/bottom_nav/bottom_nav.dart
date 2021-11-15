import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:suites/constants/appcolors.dart';
import 'package:suites/views/bookings/bookings.dart';
import 'package:suites/views/favorites/favorites.dart';
import 'package:suites/views/home/homepage.dart';
import 'package:suites/views/search/search.dart';

class BtmNavView extends StatefulWidget {
  const BtmNavView({Key? key}) : super(key: key);

  @override
  State<BtmNavView> createState() => _BtmNavViewState();
}

class _BtmNavViewState extends State<BtmNavView> {
  int currentPage = 0;

  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getPage(currentPage),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        circleColor: appPrimaryColor,
        inactiveIconColor: darkerBlue,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
        initialSelection: 0,
        key: bottomNavigationKey,
        tabs: [
          TabData(
            iconData: Icons.home,
            title: 'Home',
          ),
          TabData(iconData: Icons.search, title: 'Search'),
          TabData(iconData: Icons.favorite, title: 'Favorites'),
          TabData(iconData: Icons.book_outlined, title: 'Bookings'),
          // TabData(iconData: Icons.notifications, title: 'Notofications'),
        ],
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return const HomePageView();
      case 1:
        return const SearchView();
      case 2:
        return const FavoritesView();
      case 3:
        return const BookingsView();

      default:
        return const Text('Welcome to Suites');
    }
  }
}
