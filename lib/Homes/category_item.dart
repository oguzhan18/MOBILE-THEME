import 'package:app_project/Homes/categories_screen.dart';

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String titl;
  final String image;

  CategoryItem(this.id, this.titl, this.image);
  void selectCategory(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (c) => Categoriesscreen(id, titl),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      borderRadius: BorderRadius.circular(25),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              image,
              height: 200,
              width: 350,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            child: Text(
              titl,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: 'Poly',
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
        ],
      ),
    );
  }
}
