// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:plant_app/Singin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String errortxt = "";
  final form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Directionality( textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 245, 247, 243),
          body: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/Login-1.png",
                    ),
                    Text(
                      "تسجيل الدخول",
                      style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Amiri',
                        color: Color(0xff45624E),
                      ),
                    ),
                    Form(
                      key: form_key,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              cursorColor: Color(0xff45624E),
                              decoration: InputDecoration(
                                // border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff45624E),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff45624E),
                                  )
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff45624E),
                                  )
                                ),
                                hintText: "البريد الإلكتروني",
                                // errorText: '$errortxt',
                                
                              ),
                              
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "الحقل فارغ";
                                }
                                final emailRegex =
                                    r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
                                if (!RegExp(emailRegex).hasMatch(value)) {
                                  return "ادخل البريد الالكتروني بشكل صحيح";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              obscureText: true,
                              cursorColor: Color(0xff45624E),
                              decoration: InputDecoration(
                                // border: OutlineInputBorder(),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xff45624E),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff45624E),
                                  )
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff45624E),
                                  )
                                ),
                                hintText: "كلمة المرور",
                                //errorText: '$errortxt',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  errortxt = "الحقل فارغ";
                                  return errortxt;
                                }
                                return null;
                              },
                              onFieldSubmitted: (value) {
                                if (form_key.currentState!.validate()) {
                                  // print("password empty");
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (form_key.currentState!.validate()) {}
                      },
                      child: Text(
                        'تسجيل الدخول',
                        style: TextStyle(fontSize: 20, fontFamily: 'Amiri'),
                      ),
                      color: Color(0xff45624E),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    //   const SizedBox(height: 50,
                    // //   ),
                    //   TextField(
                    //     decoration: InputDecoration(
                    //       hintText: 'البريد الإلكتروني',
                    //       prefixIcon: Icon(Icons.email),
                    //       // errorText: 'أدخلت البريد الإلكتروني بشكل خاطئ',
                    //     ),
        
                    //   ),
                    //    const SizedBox(height: 40,
                    //   ),
                    //   const TextField(
                    //     decoration: InputDecoration(
                    //       hintText: 'كلمة المرور',
                    //       prefixIcon: Icon(Icons.remove_red_eye_sharp),
                    //        // errorText: 'أدخلت كلمة المرور بشكل خاطئ',
                    //     ),
                    //   ),
                    //   const SizedBox(height: 50,
                    //   ),
                    //   MaterialButton(onPressed: (){},
                    //  child: Text('تسجيل الدخول',
                    //  style:
                    //  TextStyle(
                    //   fontSize: 20,
                    //   fontFamily: 'Amiri'
                    //   ),
                    //  ),
                    //  color: Color(0xff45624E),
                    //  textColor: Colors.white,
                    //  ),
        
                    Row(
                      children: [
                        Text(
                          'ليس لديك حساب ؟',
                          style: TextStyle(
                            fontFamily: 'Amiri',
                            fontSize: 20,
                            color: Color(0xff45624E),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Singin())
                            );
                          },
                          child: Text(
                            'إنشاء حساب ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Amiri',
                              color: Color(0xff45624E),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
