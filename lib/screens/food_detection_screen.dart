import 'package:flutter/material.dart';
import '../colors.dart';

class FoodDetectionScreen extends StatelessWidget {
  const FoodDetectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detected = true;
    final String foodName = "Hamburger";
    final protein = 450, calories = 220, fat = 100, carbs = 49;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kGreenAccent),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Detect Food",
          style: TextStyle(color: kGreenDark, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Text("Dinner", style: TextStyle(fontSize: 22, color: kGreenDark)),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                color: kGreyBg,
                borderRadius: BorderRadius.circular(18),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "What is your food name?",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(16),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kGreenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                minimumSize: Size(double.infinity, 54),
              ),
              onPressed: () {},
              child: Text("Detect Food", style: TextStyle(fontSize: 17)),
            ),
            if (detected) ...[
              SizedBox(height: 40),
              Text(
                foodName,
                style: TextStyle(
                  fontSize: 24,
                  color: kGreenDark,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 9),
              Text(
                "A hamburger also burger for short is a sandwich consisting of one or more...",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey[600]),
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _nutrientCard("Protein", protein),
                  _nutrientCard("Calories", calories),
                  _nutrientCard("Fat", fat),
                  _nutrientCard("Carbs", carbs),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _nutrientCard(String label, int value) {
    return Card(
      color: kGreenAccent.withOpacity(0.17),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 11),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, color: kGreenDark),
            ),
            SizedBox(height: 2),
            Text(
              "$value g",
              style: TextStyle(
                fontSize: 16,
                color: kGreenDark,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
