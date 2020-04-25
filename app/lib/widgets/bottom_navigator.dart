import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int _currentTab = 0;

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
                  FontAwesomeIcons.wallet,
                  size: 20,
                  color: kIconsColor,
                ),
                title: SizedBox.shrink(),
                activeIcon: _activeIcon(FontAwesomeIcons.wallet),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.home,
                  size: 20,
                  color: kIconsColor,
                ),
                title: SizedBox.shrink(),
                activeIcon: _activeIcon(FontAwesomeIcons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.slidersH,
                  size: 20,
                  color: kIconsColor,
                ),
                title: SizedBox.shrink(),
                activeIcon: _activeIcon(FontAwesomeIcons.slidersH),
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
      decoration: BoxDecoration(color: kAccentColor, shape: BoxShape.circle),
    );
  }
}
