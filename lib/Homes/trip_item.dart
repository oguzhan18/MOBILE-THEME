import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Tripitem extends StatelessWidget {
  final String title;
  final String image;
  final String sel;
  Tripitem({
    required this.title,
    required this.image,
    required this.sel,
  });

  void selectTrip() {}
  double rating = 0.0;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectTrip,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      image,
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                  width: 10,
                ),
                Container(
                  height: 150,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 255, 255, 255).withOpacity(0.2),
                        Color.fromARGB(255, 255, 255, 255).withOpacity(0.8),
                      ],
                      stops: [0.5, 1],
                    ),
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Poly',
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25.0,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 150,
                  alignment: Alignment(0.2, 0.2),
                  padding: EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Text(
                    sel,
                    style: TextStyle(
                      fontFamily: 'Poly',
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Row(
                  children: [],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void setState(Null Function() param0) {}
