import 'package:flutter/material.dart';

class Sigin extends StatefulWidget {
  const Sigin({Key? key}) : super(key: key);

  @override
  _SiginState createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 16, 29),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.domain_add,
              color: Color.fromARGB(255, 80, 243, 5),
            ),
            tooltip: 'Server Connec',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Server to Connec'),
                ),
              );
            },
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 27, 16, 29),
      body: CustomPaint(
        size: Size(100, 100),
        painter: RPSCustomPainter(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundImage: AssetImage('images/icon.png'),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 45),
              Container(),
              SizedBox(height: 50),
              Container(
                child: TextField(
                  textAlign: TextAlign.left,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    labelText: 'İsim',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color.fromARGB(249, 0, 0, 0),
                    ),
                    fillColor: Color.fromARGB(255, 253, 253, 253),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 0, 0, 0),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 82, 12, 148),
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
                    labelText: ' Email',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(97, 0, 0, 0)),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 70, 24, 97),
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
                    labelText: 'Şifre',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 68, 17, 70),
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
              Container(
                child: TextField(
                  textAlign: TextAlign.left,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    labelText: 'Şifreyi Tekrarlayın',
                    labelStyle: TextStyle(
                        fontSize: 15, color: Color.fromARGB(255, 0, 0, 0)),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black12,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 73, 23, 83),
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
                    margin: EdgeInsets.all(6),
                    padding: EdgeInsets.all(6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(55, 97, 97, 97),
                        border: Border.all(
                            color: Color.fromARGB(
                                255, 0, 0, 0), // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(28.0)), // Set rounded corner radius
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Color.fromARGB(255, 255, 255, 255),
                              offset: Offset(1, 1))
                        ] // Make rounded corner of border
                        ),

                    // ignore: deprecated_member_use
                    child: FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      label: Text(
                        'Kayıt Ol',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
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
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0012500, size.height * 0.0020000);
    path_0.quadraticBezierTo(
        size.width * 0.0003125, size.height * 0.7505000, 0, size.height);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(size.width * 0.9987500, size.height * 0.4000000);
    path_0.quadraticBezierTo(size.width * 0.5603125, size.height * 0.5705000,
        size.width * 0.0012500, size.height * 0.0020000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
