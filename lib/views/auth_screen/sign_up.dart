import 'package:flutter/material.dart';

void main() {
  runApp(const DoctorDoorApp());
}

class DoctorDoorApp extends StatelessWidget {
  const DoctorDoorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    );
  }
}
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            // Top Decorative Shape
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.tealAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(75),
                  ),
                ),
              ),
            ),
            // Bottom Decorative Shape
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(75),
                  ),
                ),
              ),
            ),
            // Form and Content
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40), // Space from top
                    // Page Title
                    const Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Sign In Link
                    Row(
                      children: [
                        const Text(
                          "Already have an account?",
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            // Navigate to Sign In Page
                          },
                          child: const Text(
                            "Sign In!",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    // Username Field
                    const Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Email Field
                    const Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Phone Field
                    const Text(
                      "Phone",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Password Field
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Confirm Password Field
                    const Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter Confirm Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Sign Up Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your Sign Up functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                        ),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
