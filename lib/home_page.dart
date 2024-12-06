import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DoctorDoorScreen(),
    );
  }
}

class DoctorDoorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // Background color of the screen
      body: SafeArea(
        child: Column(
          children: [
            // Top decorative shape
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 50, // Reduced width
                height: 50, // Reduced height
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25), // Adjusted corner radius
                  ),
                ),
              ),
            ),

            Spacer(flex: 3), // Increased space before the title

            // Title
            Text(
              "Doctor Door",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),

            Spacer(flex: 5), // Larger space to push buttons further down

            // Buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  // Sign Up Button
                  ElevatedButton(
                    onPressed: () {
                      // Add your Sign Up functionality here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.tealAccent,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(double.infinity, 50), // Full-width button
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10), // Space between buttons

                  // Sign In Button
                  OutlinedButton(
                    onPressed: () {
                      // Add your Sign In functionality here
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.white, width: 2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      minimumSize: Size(double.infinity, 50), // Full-width button
                    ),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),

            Spacer(flex: 8), // Larger space to push buttons closer to the bottom

            // Bottom decorative shape
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 50, // Reduced width
                height: 50, // Reduced height
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25), // Adjusted corner radius
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
