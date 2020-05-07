import 'package:app/constants.dart';
import 'package:app/widgets/bottom_navigation.dart';
import 'package:app/widgets/header.dart';
import 'package:app/widgets/menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-4.0, 0.0),
                end: Alignment(0.0, 1.5),
                colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColor,
                  kGradientColor1,
                  kGradientColor2,
                  kGradientColor3,
                  kGradientColor4,
                  kGradientColor4
                ],
                stops: [0.0, 0.3, 0.2, 0.3, 0.63, 0.63, 0.0],
              ),
            ),
            child: Header(),
          ),
          Container(
            margin: EdgeInsets.only(top: 180.0),
            padding: EdgeInsets.only(top: 40.0),
            decoration: BoxDecoration(
              color: kBodyColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "AVAILABLE LIMIT",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 6.0),
                Text(
                  "\$4,25,000",
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.1,
                  ),
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'USED LIMIT',
                          style: kSubTitlesStyle,
                        ),
                        SizedBox(height: 6.0),
                        Text(
                          '\$75,000',
                          style: kNumberTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('APPROVED LIMIT', style: kSubTitlesStyle),
                        SizedBox(height: 6.0),
                        Text(
                          '\$5,00,000',
                          style: kNumberTextStyle,
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                ButtonTheme(
                  minWidth: 250.0,
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () {},
                    child: Text(
                      'Get Money',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    elevation: 0.0,
                    color: Theme.of(context).accentColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Menu(),
              ],
            ),
          ),
          BottomNavigation(),
        ],
      ),
    );
  }
}
