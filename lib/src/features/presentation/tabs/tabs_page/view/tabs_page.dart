import 'package:flutter/material.dart';

  
import 'package:flutter_app_test/src/features/presentation/tabs/explore_tabs/view/explore_tab.dart';
import 'package:flutter_app_test/src/features/presentation/tabs/favorite_tab/view/favorite_tab.dart';
import 'package:flutter_app_test/src/features/presentation/tabs/my_order_tab/view/my_order_tab.dart';
import 'package:flutter_app_test/src/features/presentation/tabs/profile_tab/view/profile_tab.dart';


class TabsPage extends StatefulWidget {
  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  List<Widget> _widgetOptions = [
    ExploreTab(),
    MyOrderTab(),
    FavoriteTab(),
    MyProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
  Widget _bottomNavigationBar() {
  return BottomNavigationBar(
    iconSize: 30,
    selectedItemColor: Colors.orange,
    unselectedItemColor: Colors.grey,
    currentIndex: _selectedItemIndex,
    onTap: _onItemTapped,
    showUnselectedLabels: true,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.assignment),
        label: 'My order',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Favorite',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_pin),
        label: 'Profile',
      ),
    ],
  );
}
}

