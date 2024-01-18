import 'package:flutter/material.dart';

class ForestDetailsPage extends StatelessWidget {
  final String forestName;

  ForestDetailsPage(this.forestName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(forestName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/${forestName.toLowerCase()}.jpg", // Convert to lowercase
              height: 150.0,
              width: 150.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Text(
              "Details of $forestName",
              style: TextStyle(fontSize: 20.0),
            ),
            // Add more details about the forest as needed
          ],
        ),
      ),
    );
  }
}
