// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:plant_app/Home.dart';
import 'package:plant_app/model/Product_Class.dart';
import 'package:plant_app/shopping_cart.dart';

// ignore: must_be_immutable
class details extends StatefulWidget {
  details({required this.item});

  Product item;

  @override
  State<details> createState() => _detalisState();
}

class _detalisState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff45624E),
          //اذا تبغاه يمين والموقع انجليزي
          // actions: [
          //   IconButton(
          //             onPressed: (){},
          //             icon: Icon(Icons.arrow_back,
          //             color: Color.fromARGB(255, 91, 150, 108),
          //             ) ,
          //           ),
          // ],
          leading: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 91, 150, 108),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              padding: EdgeInsets.only(
                left: 10,
                right: 20,
                bottom: 350,
              ),
              height: 400,
              decoration: BoxDecoration(
                  color: Color(0xff45624E),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  )),
            ),
            Positioned(
              top: 5,
              left: 20,
              bottom: 0,
              right: 20,
              child: Container(
                child: Column(children: [
                  Image.asset(
                    widget.item.imagePath,
                    width: 350,
                    height: 350,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 140),
                    child: Row(
                      children: [
                        Text(
                          widget.item.price.toString(),
                          style: TextStyle(
                            fontFamily: 'Amiri',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'SAR',
                          style: TextStyle(
                            fontFamily: 'Amiri',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 420,
                right: 20,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'تفاصيل المنتج :',
                        style: TextStyle(
                          fontFamily: 'Amiri',
                          fontSize: 25,
                          color: Color.fromARGB(255, 29, 57, 37),
                        ),
                      ),
                      SizedBox(
                        width: 130,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Color.fromARGB(255, 91, 150, 108),
                        ),
                      ),
                      Text(
                        '0',
                        style: TextStyle(
                          fontFamily: 'Amiri',
                          fontSize: 20,
                          color: Color.fromARGB(255, 42, 113, 63),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove_sharp,
                          color: Color.fromARGB(255, 91, 150, 108),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.item.description,
                    style: TextStyle(
                        fontFamily: 'Amiri',
                        fontSize: 20,
                        color: Color.fromARGB(255, 62, 109, 75)),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Shopping_Cart(
                                    Cart: products[0],
                                  )));
                    },
                    child: Text(
                      'إضافة إلى السلة',
                      style: TextStyle(fontSize: 20, fontFamily: 'Amiri'),
                    ),
                    color: Color(0xff45624E),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
