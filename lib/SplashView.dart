
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffF9F8FD),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/5.png"),
            SizedBox(height: 80,
            ),
            Text("نبتة" ,
              style:TextStyle(
              fontFamily: 'Amiri',
              fontSize: 80,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 134, 185, 160),
              ),
             ), 
                
          ],
        ),
      ),
      );
  }
}