import 'package:flutter/material.dart';

class MountainDetailsPage extends StatelessWidget {
  final String mountainName;

  MountainDetailsPage(this.mountainName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mountainName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/${mountainName.toLowerCase()}.jpg", // Assuming images are named after mountain names in lowercase
              height: 150.0,
              width: 150.0,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20.0),
            Text(
              "Details of $mountainName",
              style: TextStyle(fontSize: 20.0),
            ),
            // Add more details about the mountain as needed
          ],
        ),
      ),
    );
  }
}
