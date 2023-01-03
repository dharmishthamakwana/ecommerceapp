import 'package:flutter/material.dart';

import 'second.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List itemslist = [
    "Samsung Galaxy A04e",
    "Redmi A1",
    "OnePlus Nord 2T 5G",
    "OPPO A31",
    "Nothing Phone (1) 5G",
    "Realme narzo 50i",
    "Samsung Galaxy S20 FE 5G",
    "Apple iPhone 14 Pro Max",
    "Apple iPhone 13",
    "Vivo V23 5G"
  ];
  List itemsimages = [
    "assets/images/iphone13.jpg",
    "assets/images/iphone14pro.jpg",
    "assets/images/nothinga31.jpg",
    "assets/images/oneplusnord.jpg",
    "assets/images/oppoa31.jpg",
    "assets/images/realmenarzo50i.jpg",
    "assets/images/samsungs20.jpg",
    "assets/images/redmia1.jpg",
    "assets/images/samsunga04a.jpg ",
    "assets/images/samsungs20.jpg",
  ];
  List price = [
    '11,998',
    '6,499',
    '28,999',
    '11,990',
    '29,884',
    '6,999',
    '37,990',
    '1,39,900',
    '69,900',
    '27,139'
  ];
  List storage = [
    "4GB RAM, 128GB Storage Upto 8GB RAM",
    "Black, 2GB RAM, 32GB Storage",
    "Gray Shadow, 8GB RAM, 128GB Storage",
    "Mystery Black, 6GB RAM, 128GB Storage",
    "Black, 128 GB,8 GB RAM",
    "Carbon Black, 2GB RAM+32GB Storage",
    "Cloud Mint, 8GB RAM, 128GB Storage",
    "128GB Space Black",
    "128GB Storage- Pink",
    "Stardust Black, 8GB RAM 128GB Storage"
  ];
  List dime = [
    "0.9x8.4x16.4 cm; 188 G",
    "16.5x0.9x7.7 cm; 192 G",
    "7.3x0.8x15.9 cm; 190 G",
    "16.4x0.8x7.6 cm; 180 G",
    "17x16x1 cm; 460 G",
    "16.5x7.6x0.9 cm; 195 G",
    "0.84x7.45x15.98 cm; 190 G",
    "6.7x3.05x0.31 inch;240 G",
    "15.5x13.7x17 cm;174 G",
    "15.7x7.2x0.7 cm; 179 G"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("E-Commerce App"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: itemslist
                .asMap()
                .entries
                .map((e) => Items(itemslist[e.key], itemsimages[e.key],
                price[e.key], storage[e.key], dime[e.key]))
                .toList(),
          ),
        ),
      ),
    );
  }

  Widget Items(
      String item, String images, String price, String storage, String dime) {
    return InkWell(
      onTap: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Second(item, images, price, storage, dime),
            ),
          );
        });
      },
      child: Expanded(
        child: Container(
          height: 100,
          width: double.infinity,
          alignment: Alignment.center,
          child: Row(
            children: [
              Image.asset(
                "$images",
                height: 100,
                width: 100,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "$item",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rs. $price",
                    //
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star_half,
                        color: Colors.orangeAccent,
                      ),
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.orangeAccent,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}