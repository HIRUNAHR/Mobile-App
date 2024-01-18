import 'package:flutter/material.dart';
import 'ForestDetailsPage.dart'; // Import the ForestDetailsPage

class ForestsListPage extends StatelessWidget {
  final List<String> forests = [
    "Knuckles",
    "Congo",
    "Amazon",
    "Guinea",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forest List"),
      ),
      body: ListView.builder(
        itemCount: forests.length,
        itemBuilder: (context, index) {
          final forestName = forests[index];
          return ListTile(
            leading: Image.asset(
              "assets/images/${forestName.toLowerCase()}.jpg", // Convert to lowercase

              height: 50.0,
              width: 50.0,
              fit: BoxFit.cover,
            ),
            title: Text(forestName),
            onTap: () {
              // Navigate to MountainDetailsPage when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ForestDetailsPage(forestName),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
