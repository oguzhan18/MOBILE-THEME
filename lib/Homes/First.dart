import 'package:app_project/models/app_drawer.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../models/app_data.dart';
import '../Homes/category_item.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
            tooltip: 'Search',
            onPressed: () {},
          ),
        ],
        title: Center(
          child: Text(
            'Dashboard',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontFamily: 'Poly',
            ),
          ),
        ),
      ),
      drawer: AppDrawer(),
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 0, 0, 0),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        buttonBackgroundColor: Color.fromARGB(255, 255, 255, 255),
        height: 50,
        items: <Widget>[
          Icon(
            Icons.shopping_basket,
            size: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.favorite,
            size: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.home,
            size: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.location_on,
            size: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Icon(
            Icons.call,
            size: 20,
            color: Color.fromARGB(255, 255, 255, 255),
          )
        ],
        animationDuration: Duration(
          milliseconds: 200,
        ),
        index: 2,
        animationCurve: Curves.bounceInOut,
        onTap: (indxe) {
          debugPrint("sidebar $indxe");
        },
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 350,
          mainAxisExtent: 200,
          childAspectRatio: 1 / 1,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: Categories_data.map(
          (categoryData) => CategoryItem(
            categoryData.id,
            categoryData.titl,
            categoryData.image,
          ),
        ).toList(),
      ),
    );
  }
}
