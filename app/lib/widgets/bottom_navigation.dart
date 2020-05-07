import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentTab = 1;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0.0, -3.0),
              blurRadius: 10,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            currentIndex: _currentTab,
            onTap: (int value) {
              setState(() {
                _currentTab = value;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Ionicons.ios_wallet,
                  size: 23,
                  color: kIconsColor,
                ),
                title: SizedBox.shrink(),
                activeIcon: _activeIcon(Ionicons.ios_wallet),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Ionicons.ios_home,
                  size: 23,
                  color: kIconsColor,
                ),
                title: SizedBox.shrink(),
                activeIcon: _activeIcon(Ionicons.ios_home),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Ionicons.ios_options,
                  size: 23,
                  color: kIconsColor,
                ),
                title: SizedBox.shrink(),
                activeIcon: _activeIcon(Ionicons.ios_options),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _activeIcon(IconData icon) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(10),
      child: Icon(icon, size: 30, color: Colors.white),
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        shape: BoxShape.circle,
      ),
    );
  }
}
