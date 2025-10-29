import 'package:flutter/material.dart';
import '../colors.dart';
import 'input_height_screen.dart';

class InputNameScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  InputNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGreyBg,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi! What is your first name?',
                style: TextStyle(
                  fontSize: 22,
                  color: kGreenDark,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 36),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Your Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kGreenAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => InputHeightScreen()),
                    );
                  },
                  child: Text('Next'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
