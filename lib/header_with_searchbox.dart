
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    //يسوي فرغ بين ال appbar و كونتينر
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      height: size.height * 0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10,right: 20,bottom: 80,),
            height:size.height * 0.2 - 27,
            decoration: BoxDecoration(color: Color(0xff45624E),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(36),
              )
            ),
            // child: Row(
            //   children: [
            //     Text('نبتة',
            //     style: TextStyle(
            //       fontSize: 35,
            //       fontFamily: 'Amiri',
            //       color: Colors.white,
            //       // fontWeight: FontWeight.bold
            //     ),
            //     ),
            //     Spacer(),
            //     Image.asset("assets/images/icon.png",
            //     )
            //   ],
            // ),
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
                    color: Color.fromARGB(255, 91, 150, 108).withOpacity(0.80)
                  ),
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
                  prefixIcon: Icon(Icons.search,
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
    );
  }
}