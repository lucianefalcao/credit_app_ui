import 'package:app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      margin:
          EdgeInsets.symmetric(horizontal: 15.0, vertical: 30.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(
          color: Colors.black12,
          offset: Offset(0.0, 3.0),
          blurRadius: 10
        ),],
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(AntDesign.clockcircleo, color: kIconsColor),
              SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Recent Transaction',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "Track Transactions & Convert EMI's",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                    ),
                  )
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
          SizedBox(height: 10.0),
          Divider(color: Colors.grey),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(AntDesign.calendar, color: kIconsColor),
              SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Bill Amount and Due date',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "Next billing cycle & amount due details",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                    ),
                  )
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
          SizedBox(height: 10.0),
          Divider(color: Colors.grey),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(AntDesign.wallet, color: kIconsColor),
              SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Ongoing EMI(s)',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "View and Manage your EMI(s)",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.0,
                    ),
                  )
                ],
              ),
              Spacer(),
              Icon(Icons.arrow_forward_ios, size: 18),
            ],
          ),
        ],
      ),
    );
  }
}