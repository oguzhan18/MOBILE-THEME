import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:app_project/regester/Forgetpass.dart';
import 'package:app_project/Homes/First.dart';
import 'package:flutter/cupertino.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.domain_add_rounded,
              color: Color.fromARGB(255, 102, 14, 14),
            ),
            tooltip: 'Connect Server',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Conneting Server'),
                ),
              );
            },
          ),
        ],
      ),
      body: CustomPaint(
        size: Size(100, 100),
        painter: RPSCustomPainter(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //CustomPaint(),
              Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 70.0,
                      backgroundImage: AssetImage('images/icon.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 45),
              Container(
                  //custm
                  ),
              SizedBox(height: 50),
              Container(
                child: TextField(
                  textAlign: TextAlign.left,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    labelText: ' Email',
                    labelStyle: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    fillColor: Colors.grey[77],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Container(
                child: TextField(
                  textAlign: TextAlign.left,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    labelText: ' Password',
                    labelStyle: TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 255, 255, 255)),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    fillColor: Color.fromARGB(0, 158, 158, 158),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 255, 255, 255),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(0, 255, 145, 0),
                        border: Border.all(
                            color: Color.fromARGB(
                                255, 0, 0, 0), // Set border color
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
                            builder: (context) => First(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      label: Text(
                        ' Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poly',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Column(
                children: [
                  // ignore: deprecated_member_use
                  FlatButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Forgetpass(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    label: Text(
                      ' Forget Password?',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poly',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150.150,
                    child: Divider(
                      indent: 20,
                      height: 0.01,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 58, 19, 52) //fromARGB(255, 143, 0, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9975000, size.height * 0.0040000);
    path_0.quadraticBezierTo(size.width * 0.9993750, size.height * 0.7495000,
        size.width, size.height * 0.9980000);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.2520000);
    path_0.quadraticBezierTo(size.width * 0.9281250, size.height * 0.7525000,
        size.width * 0.9975000, size.height * 0.0040000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
