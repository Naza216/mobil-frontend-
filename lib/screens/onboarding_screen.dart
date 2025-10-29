import 'package:flutter/material.dart';
import '../colors.dart';
import 'input_name_screen.dart';
import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fastfood_rounded, color: kGreenAccent, size: 64),
            SizedBox(height: 40),
            Text(
              'Eat Healthy',
              style: TextStyle(
                fontSize: 32,
                color: kGreenDark,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Maintaining good health should be the primary focus of everyone.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[600]),
            ),
            SizedBox(height: 100),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kGreenAccent,
                  minimumSize: Size(double.infinity, 54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => InputNameScreen()),
                  );
                },
                child: Text('Get Started', style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                );
              },
              child: Text(
                'Already Have An Account? Log In',
                style: TextStyle(color: kGreenDark),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
