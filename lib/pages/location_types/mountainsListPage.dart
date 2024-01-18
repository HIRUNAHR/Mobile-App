import 'package:flutter/material.dart';
import 'MountainDetailsPage.dart'; // Import the MountainDetailsPage

class MountainListPage extends StatelessWidget {
  final List<String> mountains = [
    "Everest",
    "Ketu",
    "Lohtse",
    "Makalu",
    "Daulagiri",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mountain List"),
      ),
      body: ListView.builder(
        itemCount: mountains.length,
        itemBuilder: (context, index) {
          final mountainName = mountains[index];
          return ListTile(
            leading: Image.asset(
              "assets/images/${mountainName.toLowerCase()}.jpg", // Convert to lowercase

              height: 50.0,
              width: 50.0,
              fit: BoxFit.cover,
            ),
            title: Text(mountainName),
            onTap: () {
              // Navigate to MountainDetailsPage when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MountainDetailsPage(mountainName),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
