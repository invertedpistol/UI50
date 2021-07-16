import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:ui50/constants.dart';

import 'body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBkg,
      bottomNavigationBar: CurvedNavigationBar(
        color: colorBottom,
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.star, size: 30),
          Icon(Icons.person, size: 30),
        ],
        height: 75,
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left:50,top:20),
          child: Icon(Icons.menu,color: colorBottom,size: 30,),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Body(),
          );
        }
      }
      
      
