import 'package:flutter/material.dart';
import 'package:ui50/classes.dart';
import 'package:ui50/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            width: size.width,
            height: size.height * 0.4,
            //color: Colors.blue,
            child: Center(
                child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70, bottom: 10),
                  child: Image.asset('assets/icons8-ice-cream-cone-100-2.png'),
                ),
                Text('Dessert?',
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'iogenserif',
                        fontWeight: FontWeight.bold,
                        color: colorBottom,
                        letterSpacing: 2)),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                      height: 40,
                      width: size.width - 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(width: 10),
                          Text('Search', style: TextStyle(fontSize: 17))
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )),
                )
              ],
            ))),
        Padding(
          padding: const EdgeInsets.only(left: 40, top: 40),
          child: Container(
            //color: Colors.red,
            height: size.height * 0.4,
            width: size.width - 40,
            child: Column(
              children: [
                Text('Popular This Week',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 23,
                        letterSpacing: 0.3)),

//    START HERE WITH LISTVIEW BUILDER
//    ADJUST HEIGHT BW SEARCH BAR AND TITLE
                Container(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  width: size.width - 40,
                  height: size.height * 0.35,
                  //color: Colors.purple,
                  child: ListView.builder(
                    itemBuilder: (context, index) =>
                        DotList(dot: eateries[index]),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
        )
      ],
    );
  }
}
