import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  String? a1;
  String? a2;
  String? a3;
  String? a4;
  String? a5;

  Second(String itemslist, String itemsimages, String price, String storage, String dime)
  {
    a1 = itemslist;
    a2 = itemsimages;
    a3 = price;
    a4 = storage;
    a5 = dime;
  }

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {

  String a="Add To Cart";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("${widget.a1}"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Container(
              height: 800,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: Image.asset("${widget.a2}")),
                  Text(
                    "${widget.a1}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${widget.a4}",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("price : "),
                      Text(
                        "₹ ${widget.a3}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
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
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Net Quantity :  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Product Dimensions :  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Generic Name :  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Other display features :  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Device interface :  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("1 Piece",style: TextStyle(
                                        fontSize: 15),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("${widget.a5}",style: TextStyle(
                                        fontSize: 15),),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Smartphone",style: TextStyle(
                                        fontSize: 15),),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Wireless",style: TextStyle(
                                        fontSize: 15),),
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text("Touchscreen",style: TextStyle(
                                        fontSize: 15),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        a='Done';
                      });
                    },
                    child: Expanded(
                      child: Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        alignment: Alignment.center,
                        child: Text("$a",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}