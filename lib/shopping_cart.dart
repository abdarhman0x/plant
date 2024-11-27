import 'package:flutter/material.dart';
import 'package:plant_app/Home.dart';
import 'package:plant_app/model/Product_Class.dart';

class Shopping_Cart extends StatefulWidget {
  Shopping_Cart({required this.Cart});

  Product Cart;

  @override
  State<Shopping_Cart> createState() => _Shopping_CartState();
}

class _Shopping_CartState extends State<Shopping_Cart> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff45624E),
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
        body: Column(
          children: [
            Container(
              height: 600,
              child: ListView.builder(
                  padding: EdgeInsets.all(8),
                  itemCount: products.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: ListTile(
                        // subtitle: Text(widget.Cart.country),
                        leading: CircleAvatar(
                            backgroundImage: AssetImage(widget.Cart.imagePath)),
                        title: Text(
                          widget.Cart.title,
                          style: TextStyle(
                            fontFamily: 'Amiri',
                            fontSize: 20,
                            color: Color(0xff45624E),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: IconButton(
                            onPressed: () {}, icon: Icon(Icons.remove)),
                      ),
                    );
                  }),
            ),
              SizedBox(
              height: 20,
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
                  'شراء 200 SAR',
                  style: TextStyle(fontSize: 20, fontFamily: 'Amiri'),
                ),
                color: Color(0xff45624E),
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),

          
           
          ],
        ),
      ),
    );
  }
}
