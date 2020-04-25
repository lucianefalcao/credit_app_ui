import 'package:app/constants.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 70.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "24",
                      style:
                          TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      "Apr",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 90,
                  width: 300,
                  decoration: BoxDecoration(
                    color: kCardName,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage("assets/images/44.jpg"),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Thivagar Natesh",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            "821-1212-1212",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 27,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}