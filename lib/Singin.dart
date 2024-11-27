// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:plant_app/Login.dart';

class Singin extends StatefulWidget {
  const Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {
  String errortxt = "";
  final form_key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: SafeArea
      (child: Scaffold(
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
                      "assets/images/Login-2.png",
                    ),
                    Text(
                      "تسجيل ",
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
                              cursorColor: Color(0xff45624E),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "الاسم بالكامل",
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
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color(0xff45624E),
                                ),
                                //errorText: '$errortxt',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "الحقل فارغ";
                                }
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              cursorColor: Color(0xff45624E),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                hintText: "العنوان",
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
                                prefixIcon: Icon(
                                  Icons.home,
                                  color: Color(0xff45624E),
                                ),
                                //errorText: '$errortxt',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "الحقل فارغ";
                                }
                              }
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              cursorColor: Color(0xff45624E),
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: "رقم الهاتف",
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
                                prefixIcon: Icon(
                                  Icons.phone,
                                  color: Color(0xff45624E),
                                ),
                                //errorText: '$errortxt',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "الحقل فارغ";
                                }
                                final phoneRegex =  r'^\d{3}[-.\s]?\d{3}[-.\s]?\d{3}$';
                                if (!RegExp(phoneRegex).hasMatch(value)) {
                                  return "ادخل الرقم بشكل صحيح ";
                                }
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              cursorColor: Color(0xff45624E),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff45624E),
                                ),
                                hintText: "البريد الإلكتروني",
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
                                //errorText: '$errortxt',
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                   return "الحقل فارغ";
                                }
                                final emailRegex =
                                    r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
                                if (!RegExp(emailRegex).hasMatch(value)) {
                                  return "ادخل البريد بشكل صحيح";
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 5,
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
                                hintText: "كلمة المرور",
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
                      height: 5,
                    ),
                    MaterialButton(
                      onPressed: () {
                        if (form_key.currentState!.validate()) {}
                      },
                      child: Text(
                        'إنشاء حساب',
                        style: TextStyle(fontSize: 20, fontFamily: 'Amiri'),
                      ),
                      color: Color(0xff45624E),
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Row(
                      children: [
                        Text(
                          'هل لديك حساب من قبل؟',
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
                              MaterialPageRoute(builder: (context) => Login())
                            );
                          },
                          child: Text(
                            'تسجيل الدخول ',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Amiri',
                              color: Color(0xff45624E),
                            ),
                          ),
                        ),
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
