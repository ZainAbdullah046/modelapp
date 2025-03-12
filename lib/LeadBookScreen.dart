import 'package:flutter/material.dart';
import 'package:modelapp/SignUpLoginScreen.dart';

class LeadBookScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to SignUpLoginScreen after 0.5 seconds
    Future.delayed(Duration(milliseconds: 1000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SignUpLoginScreen()),
      );
    });

    // Get the screen size
    final screenSize = MediaQuery.of(context).size;
    final imageSize = screenSize.width * 0.25; // 25% of screen width

    return Scaffold(
      backgroundColor: Color(0xFF41B57F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'Assests/green.PNG',
              width: imageSize, // Responsive width
              height: imageSize, // Responsive height
            ),
            SizedBox(height: screenSize.height * 0.02), // 2% of screen height
            Text(
              'LEAD BOOK',
              style: TextStyle(
                fontSize: screenSize.width * 0.06, // 6% of screen width
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
