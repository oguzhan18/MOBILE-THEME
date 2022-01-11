import 'package:app_project/Homes/trip_item.dart';
import 'package:flutter/material.dart';
import '../models/app_data.dart';

class Categoriesscreen extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  Categoriesscreen(
    this.categoryId,
    this.categoryTitle,
  );
  @override
  Widget build(BuildContext context) {
    final filterdTrips = Trips_data.where((trip) {
      return trip.categries.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            categoryTitle,
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poly',
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Tripitem(
            title: filterdTrips[index].title,
            image: filterdTrips[index].iamge,
            sel: filterdTrips[index].sel,
          );
        },
        itemCount: filterdTrips.length,
      ),
    );
  }
}
