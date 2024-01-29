import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class DashboardScreen extends StatefulWidget{
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final controller = PersistentTabController(initialIndex: 0);
  List<Widget> _buildScren(){
    return[
      Text('Home'),
      Text('Map'),
      Text('Qr Code'),
      Text('Diary'),
      Text('Settings'),
    ];
  }
  List<PersistentBottomNavBarItem> _navBarItem(){
    return[
      PersistentBottomNavBarItem(
          icon: Icon(Icons.home_filled,),
        inactiveIcon: Icon(Icons.home_filled,color: Colors.black,)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.map,),
          inactiveIcon: Icon(Icons.map,color: Colors.black,)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.qr_code_scanner_rounded,),
          activeColorPrimary: Color(0xFFC8102E),
          activeColorSecondary: Colors.white,
          inactiveIcon: Icon(Icons.qr_code_scanner_rounded,color: Colors.white,)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.home_filled),
          inactiveIcon: Icon(Icons.home_filled,color: Colors.black,)
      ),
      PersistentBottomNavBarItem(
          icon: Icon(Icons.settings_outlined,),
          inactiveIcon: Icon(Icons.settings_outlined,color: Colors.black,),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      screens: _buildScren(),
      items : _navBarItem(),
      controller: controller,
      backgroundColor: Colors.white,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(0),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}