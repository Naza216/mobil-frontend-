import 'package:flutter/material.dart';
import 'main_screen.dart';

class InputWeightScreen extends StatelessWidget {
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'What is your current weight?',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 32),
            TextField(
              controller: _weightController,
              decoration: InputDecoration(
                hintText: '75 kg',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
                );
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
