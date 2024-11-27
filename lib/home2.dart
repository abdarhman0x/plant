
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:plant_app/model/Product_Class.dart';




class home2 extends StatelessWidget {



  const home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: GridTile(
                    child: Stack(children: [
                      Positioned(
                        top: -3,
                        bottom: -9,
                        right: 0,
                        left: 0,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(55),
                            child: Image.asset('assets/images/plant4.jpg')),
                      ),
                    ]),
                    footer: GridTileBar(
// backgroundColor: Color.fromARGB(66, 73, 127, 110),
                      trailing: IconButton(
                          color: Color.fromARGB(255, 62, 94, 70),
                          onPressed: () {},
                          icon: Icon(Icons.add)),

                      leading: Text("\$12.99"),

                      title: Text(
                        "",
                      ),
                    ),
                  ),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/img/test.jpg"),
                          fit: BoxFit.cover),
                    ),
                    currentAccountPicture: CircleAvatar(
                        radius: 55,
                        backgroundImage: AssetImage("assets/img/ali.jpg")),
                    accountEmail: Text("ali@yahoo.com"),
                    accountName: Text("ali Hassan",
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                        )),
                  ),
                  ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {}),
                  ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {}),
                  ListTile(
                      title: Text("About"),
                      leading: Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {}),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text("Developed by Ali Hassan © 2022",
                    style: TextStyle(fontSize: 16)),
              )
            ],
          ),
        ),
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 24,
                      child: Container(
                          child: Text(
                            "8",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text(
                    "\$ 13",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ],
          backgroundColor: Colors.green,
          title: Text("Home"),
        ));
  }
}














// // ignore_for_file: prefer_const_constructors, sort_child_properties_last

// import 'package:flutter/material.dart';
// import 'package:plant_app/header_with_searchbox.dart';


// class home2 extends StatefulWidget {
//   const home2({super.key});

//   @override
//   State<home2> createState() => _HomeState();
// }

// class _HomeState extends State<home2> {
//   @override
//   Widget build(BuildContext context) {
//     //it will provie us total height and width of our screen
//     Size size = MediaQuery.of(context).size;
//      //safearea تعمل حق الشاحن والساعة باللون الاسود
//     return  SafeArea(
//       child: Directionality( textDirection: TextDirection.rtl,
//         child: Scaffold(
//            appBar: AppBar(
//             backgroundColor: Color(0xff45624E),
//             elevation: 0,
//             leading: Padding(
//               padding: EdgeInsets.only(right: 10,top:5),
//               child: Text(
//                 'نبتة',
//                 style: TextStyle(
//                   fontSize: 35,
//                   fontFamily: 'Amiri',
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//             actions: [
//               Padding(
//                   padding: EdgeInsets.only(left: 10, bottom: 5,top: 5),
//                   child: Image.asset(
//                     "assets/images/icon.png",
//                   )),
//             ],
//           ),
//           bottomNavigationBar: Container(
//             padding: EdgeInsets.only(
//               left: 60,
//               right: 60,
//             ),
//             height: 50,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow :[
//                BoxShadow(
//                 offset: Offset(0, -10),
//                 blurRadius: 35,
//                 color: Color.fromARGB(255, 91, 150, 108).withOpacity(0.38),
//                ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                  IconButton(
//                   onPressed: (){}, 
//                   icon: Icon(Icons.person) ,
//                 ),
                
//                  Stack(
//                    children:[ 
//                     Positioned(
//                       bottom: 20,
//                       child: Container(
//                       child:
//                        Text('8',
//                        style: TextStyle(color:Colors.white,
//                        ),
//                         ),
//                         padding: EdgeInsets.all(5),
//                         decoration: BoxDecoration(
//                           color: Color.fromARGB(255, 79, 156, 101),
//                           shape: BoxShape.circle,
//                         ),
        
//                     ),
                   
//                      ),
//                     IconButton(
//                     onPressed: (){
//                       // NavigationBar.push(
//                       //   context,
//                       //   MaterialPageRoute(
//                       //     builder: (context) => Shopping_Cart(),
//                       //   ),
//                       // );
//                     }, 
//                     icon: Icon(Icons.add_shopping_cart) ,
//                     ),
//                    ]
//                  ),
//                 IconButton(
//                   onPressed: (){}, 
//                   icon: Icon(Icons.home_filled,
//                   color: Color.fromARGB(255, 91, 150, 108),
//                   ) ,
//                 ),
//               ],
//             ),
//           ),
          
//           //it enable scrolling on small device
//           body:SingleChildScrollView(
//             child: Column(
//               children: [
//                 HeaderWithSearchBox(size: size),
//                 Column(
//                   children: [
//                     Row(
//                       children: [
//                         HomeTop(
//                           image: 'assets/images/plant1.jpg',
//                           title: 'نبات الصبار',
//                           country: 'روسيا',
//                           price: 20,
//                           press: (){},
                        
//                         ),
//                          HomeTop(
//                           image: 'assets/images/plant1.jpg',
//                           title: 'نبات الصبار',
//                           country: 'روسيا',
//                           price: 20,
//                           press: (){},
//                         ),
//                       ],
//                     ),
        
//                      Row(
//                       children: [
//                         HomeTop(
//                           image: 'assets/images/plant1.jpg',
//                           title: 'نبات الصبار',
//                           country: 'روسيا',
//                           price: 20,
//                           press: (){},
                        
//                         ),
//                          HomeTop(
//                           image: 'assets/images/plant1.jpg',
//                           title: 'نبات الصبار',
//                           country: 'روسيا',
//                           price: 20,
//                           press: (){},
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class HomeTop extends StatelessWidget {
//   const HomeTop({
    
//     super.key, 
//     required this.image,
//      required this.title, 
//      required this.country, 
//      required this.price, 
//      required this.press,
//   });

//   final String image,title,country;
//   final int price;
//   final Function press;



//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       margin: EdgeInsets.only(
//         right: 25,
//         bottom: 40,
//         ),
//         width: size.width * 0.4,
//     child: Column(
//       children: [
//         Image.asset(image),
//         GestureDetector(
//           onTap: press(),
//           child: Container(
//             padding: EdgeInsets.only(
//               right: 3,
//               left: 3,
//             ),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius:BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                 bottomRight: Radius.circular(10),
                
//               ) ,
//               boxShadow: [
//                 BoxShadow(
//                   offset: Offset(0, 10),
//                   blurRadius: 50,
//                   color: Color.fromARGB(255, 91, 150, 108).withOpacity(0.23),
//                 ),
//               ],
//             ),
//             child: Row(
//               children: [
//                 RichText(text: TextSpan(
//                     children: [
//                     TextSpan(
//                       text: '$title\n',
//                       style: TextStyle(
//                         fontFamily: 'Amiri',
//                         fontSize: 20,
//                         color: Color(0xff45624E),
//                         fontWeight: FontWeight.bold,
//                       ),
//                       ),
//                       TextSpan(
//                         text: '$country',
//                         style: TextStyle(
//                           fontFamily: 'Amiri',
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                          color: Color.fromARGB(255, 79, 156, 101).withOpacity(0.5)
//                         ),
//                       ),
//                     ],
//                 ),
//                 ),
//                 Spacer(),
//                 // SizedBox(width: 30,),
//                 Text(
//                   '$price\ SAR',
//                   style: TextStyle(
//                     fontFamily: 'Amiri',
//                     fontSize: 15,
//                     color:Color.fromARGB(255, 79, 156, 101),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
        
//       ],
//     ),
//     );
//   }
// }
