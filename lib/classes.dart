import 'package:flutter/material.dart';

class Dots {
  final String l1, l2, addr, uri;

  Dots({
    required this.addr,
    required this.l1,
    required this.l2,
    required this.uri
  });

}

List <Dots> eateries = [
  Dots(
    l1: 'Apple Crumble',
    l2: 'Cheese Cake',
    addr: 'Some Place\n34 Gary Street\nNew York',
    uri: 'assets/apple.jpg'
  ),
  Dots(
    l1: '101 Flavors',
    l2: 'Authentic Gelato',
    addr: 'Scoops\n12 Rose Avenue\nNew York',
    uri: 'assets/icecream.jpg'
  ),
  Dots(
    l1: 'Chicken Biryani',
    l2: 'Extra Spicy',
    addr: 'Paragon\nKozhikode\nKerala',
    uri: 'assets/biryani.jpg'
  )
];

class DotList extends StatelessWidget {

  const DotList({ Key? key, required this.dot }) : super(key: key);
  final Dots dot;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height*0.35,
      width: 170,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Container(
            child: Image.asset(dot.uri),
            clipBehavior: Clip.hardEdge,
            width: 170,
            height: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
            ),
        ),
        SizedBox(height:10),
        Text(dot.l1+'\n'+dot.l2,style:TextStyle(color: Colors.white70,fontSize: 15, fontWeight: FontWeight.bold)),
        SizedBox(height:10),
        Text(dot.addr, style:TextStyle(color: Colors.white54))
      ],crossAxisAlignment: CrossAxisAlignment.start,)
    );
  }
}