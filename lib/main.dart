import 'dart:ui';

import 'package:app_project/regester/Login.dart';

import 'package:app_project/regester/Sigin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// ignore: unused_import
import 'regester/Login.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Color.fromARGB(255, 0, 0, 0)))),
      home: Food(),
    ),
  );
}

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  _FoodState createState() => _FoodState();
}

class _FoodState extends State<Food> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 29, 20, 34),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/icon.png'),
              ),
            ),
            Container(
              child: Text(
                'AIFA FİNANCE',
                style: TextStyle(
                  fontFamily: 'Poly',
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                'Fiyatı biz verelim, Değerini siz...',
                style: TextStyle(
                  fontFamily: 'Poly',
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      border: Border.all(
                          color: Colors.white12, // Set border color
                          width: 1.0), // Set border width
                      borderRadius: BorderRadius.all(
                          Radius.circular(28.0)), // Set rounded corner radius
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          color: Colors.black38,
                          offset: Offset(1, 1),
                        ),
                      ] // Make rounded corner of border
                      ),
                  // ignore: deprecated_member_use
                  child: FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Sigin(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Kayıt Ol',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poly',
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4),
                  padding: EdgeInsets.all(4),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      border: Border.all(
                          color: Colors.white12, // Set border color
                          width: 1.0), // Set border width
                      borderRadius: BorderRadius.all(
                          Radius.circular(28.0)), // Set rounded corner radius
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 4,
                            color: Colors.black38,
                            offset: Offset(1, 1))
                      ] // Make rounded corner of border
                      ),

                  // ignore: deprecated_member_use
                  child: FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Giriş Yap',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poly',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
