import 'package:flutter/material.dart';
import 'input_weight_screen.dart';

class InputHeightScreen extends StatelessWidget {
  final TextEditingController _heightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('How tall are you?', style: TextStyle(fontSize: 20)),
            SizedBox(height: 32),
            TextField(
              controller: _heightController,
              decoration: InputDecoration(
                hintText: '180 cm',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InputWeightScreen()),
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
