// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:plant_app/details.dart';
import 'package:plant_app/model/Product_Class.dart';
import 'package:plant_app/shopping_cart.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _hometestState();
  
}

class _hometestState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff45624E),
          elevation: 0,
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(
            left: 60,
            right: 60,
          ),
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -10),
                blurRadius: 35,
                color: Color.fromARGB(255, 91, 150, 108).withOpacity(0.38),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home_filled,
                  color: Color.fromARGB(255, 91, 150, 108),
                ),
              ),
              Stack(children: [
                Positioned(
                  bottom: 20,
                  child: Container(
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 79, 156, 101),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                     Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Shopping_Cart(Cart: products[0],))
                            );
                          },
                  icon: Icon(Icons.add_shopping_cart),
                ),
              ]),
            ],
          ),
        ),
        body: Stack(
          children: [
          Container(
            margin: EdgeInsets.only(bottom: 50),
            height: size.height * 0.2,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 10,
                    right: 20,
                    bottom: 80,
                  ),
                  height: size.height * 0.2 - 27,
                  decoration: BoxDecoration(
                      color: Color(0xff45624E),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                        bottomRight: Radius.circular(36),
                      )),
                  child: Row(
                    children: [
                      Text(
                        'نبتة',
                        style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'Amiri',
                          color: Colors.white,
                          // fontWeight: FontWeight.bold
                        ),
                      ),
                      Spacer(),
                      Image.asset(
                        "assets/images/icon.png",
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Color.fromARGB(255, 91, 150, 108)
                                .withOpacity(0.80)),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'بحث',
                        hintStyle: TextStyle(
                          color: Color(0xff45624E),
                          fontSize: 20,
                          fontFamily: 'Amiri',
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xff45624E),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 2 / 3,
                  // crossAxisSpacing: 3,
                  // mainAxisSpacing: 2,
                ),
                itemCount: products.length,
                itemBuilder: ((BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                        Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => details(item: products[index],))
                            );
                          },
                  child: SingleChildScrollView(
                    child: Stack(children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: 20,
                            left: 20,
                          ),
                          child: Column(
                              children: [
                                Image.asset(products[index].imagePath,
                                height: 200,
                                ),
                                Container(
                                  padding: EdgeInsets.only(
                                    right: 3,
                                    left: 3,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 10),
                                        blurRadius: 50,
                                        color: Color.fromARGB(255, 91, 150, 108)
                                            .withOpacity(0.23),
                                      ),
                                    ],
                                  ),
                                  child: Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: products[index].title,
                                              style: TextStyle(
                                                
                                                fontFamily: 'Amiri',
                                                fontSize: 20,
                                                color: Color(0xff45624E),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            TextSpan(
                                              text:products[index].country,
                                              style: TextStyle(
                                                  fontFamily: 'Amiri',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: Color.fromARGB(
                                                          255, 79, 156, 101)
                                                      .withOpacity(0.5)),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Spacer(),
                                      // SizedBox(width: 30,),
                                      Row(
                                        children: [
                                          Text(
                                            products[index].price.toString(),
                                            style: TextStyle(
                                              fontFamily: 'Amiri',
                                              fontSize: 15,
                                              color:
                                                  Color.fromARGB(255, 79, 156, 101),
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Text('SAR'
                                              ,style: TextStyle(
                                              fontFamily: 'Amiri',
                                              fontSize: 15,
                                              color:
                                                  Color.fromARGB(255, 79, 156, 101),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ]),
                  ),
                  );
                }),
            )
          ),
        ]),
      ),
    );
  }
}
