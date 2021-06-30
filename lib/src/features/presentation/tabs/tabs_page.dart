import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:vroom/src/features/presentation/tabs/explore_tab/View/explore_tab.dart';
import 'package:vroom/src/features/presentation/tabs/favorites_tab/View/favorites_tab.dart';
import 'package:vroom/src/features/presentation/tabs/my_order_tab/View/my_order_tab.dart';
import 'package:vroom/src/features/presentation/tabs/profile_tab/View/profile_tab.dart';


class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrdersTab(),
    FavoritesTab(),
    ProfileTab(),
  ];

  int _selectedScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions[_selectedScreenIndex],
        bottomNavigationBar: FancyBottomNavigation(
          activeIconColor: Theme.of(context).accentColor,
          inactiveIconColor: Colors.grey,
          initialSelection: _selectedScreenIndex,
          textColor: Theme.of(context).accentColor,
          onTabChangedListener: (position) {
            setState(() {
              _selectedScreenIndex = position;
            });
          },
          tabs: [
            TabData(iconData: Icons.explore, title: 'Explore'),
            TabData(iconData: Icons.assignment, title: 'My Order'),
            TabData(iconData: Icons.book, title: 'Favorites'),
            TabData(iconData: Icons.person_pin, title: 'Profile'),
          ],
        ),
      ),
    );
  }
}
