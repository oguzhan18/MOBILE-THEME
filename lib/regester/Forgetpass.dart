import 'package:flutter/material.dart';

class Forgetpass extends StatefulWidget {
  const Forgetpass({Key? key}) : super(key: key);

  @override
  _ForgetpassState createState() => _ForgetpassState();
}

class _ForgetpassState extends State<Forgetpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.money_outlined,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('This is a snackbar'),
                ),
              );
            },
          ),
        ],
      ),
      body: CustomPaint(
        size: Size(700, 400),
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
                      radius: 70.0,
                      backgroundImage: AssetImage('images/bobo.jpg'),
                    ),
                  ),
                ],
              ),
              Container(
                  //custm
                  ),
              SizedBox(height: 100),
              Container(
                child: TextField(
                  textAlign: TextAlign.left,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    labelText: ' Email',
                    labelStyle: TextStyle(fontSize: 15, color: Colors.white38),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.white38,
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
                        color: Colors.black12,
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(4),
                    padding: EdgeInsets.all(4),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.amber[800],
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
                      onPressed: () {},
                      icon: Icon(
                        Icons.send_rounded,
                        color: Colors.white10,
                      ),
                      label: Text(
                        ' Send',
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
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color(0xFFFF8F00)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9972222, size.height * 0.3125000);
    path_0.quadraticBezierTo(size.width * 0.9972222, size.height * 0.8281250,
        size.width * 0.9972222, size.height);
    path_0.lineTo(0, size.height * 0.9953125);
    path_0.quadraticBezierTo(
        0, size.height * 0.4843750, 0, size.height * 0.3140625);
    path_0.cubicTo(
        size.width * 0.1409722,
        size.height * 0.4679687,
        size.width * 0.2979167,
        size.height * 0.4945312,
        size.width * 0.5000000,
        size.height * 0.4984375);
    path_0.cubicTo(
        size.width * 0.6861111,
        size.height * 0.4941406,
        size.width * 0.8277778,
        size.height * 0.4675781,
        size.width * 0.9972222,
        size.height * 0.3125000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
