import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Color.fromARGB(58, 0, 0, 0),
            child: CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('images/aifa.png'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'AIFA MOBILE',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Poly',
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(
              Icons.add_shopping_cart,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'Alım - Satım',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Poly',
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.translate,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'Döiz Çevirici',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Poly',
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.alarm_add,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'Alarım',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Poly',
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.pageview,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'portfolio',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Poly',
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              size: 25,
              color: Colors.black,
            ),
            title: Text(
              'Ayarlar',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Poly',
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
