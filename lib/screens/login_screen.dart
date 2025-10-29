import 'package:flutter/material.dart';
import '../colors.dart';
import 'main_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyBg,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock_outline_rounded, color: kGreenAccent, size: 54),
              SizedBox(height: 18),
              Text(
                'Welcome Back!',
                style: TextStyle(
                  fontSize: 28,
                  color: kGreenDark,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
                obscureText: true,
              ),
              SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => MainScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kGreenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                  child: Text('Log In'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
