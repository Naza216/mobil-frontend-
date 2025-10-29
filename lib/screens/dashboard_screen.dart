import 'package:flutter/material.dart';
import '../colors.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Data dummy untuk tampilan
    final userName = "Chan";
    final foods = {"Breakfast": "Bread", "Lunch": "-", "Dinner": "Bread"};
    final foodIcons = {
      "Breakfast": Icons.free_breakfast,
      "Lunch": Icons.lunch_dining,
      "Dinner": Icons.dinner_dining,
    };

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Today Foods',
          style: TextStyle(color: kGreenDark, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: kGreenAccent),
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          Text(
            "Hello $userName!",
            style: TextStyle(
              fontSize: 28,
              color: kGreenDark,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Find, track and eat healthy food.",
            style: TextStyle(fontSize: 15, color: Colors.grey[600]),
          ),
          SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(
              color: kGreyBg,
              borderRadius: BorderRadius.circular(16),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search recipes, articles, people...',
                prefixIcon: Icon(Icons.search, color: kGreenDark),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(16),
              ),
            ),
          ),
          SizedBox(height: 28),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kGreenAccent,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: Text(
                "Track Your Weekly Foods",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: foods.keys.map((item) {
              return Expanded(
                child: Card(
                  elevation: 1,
                  color: kGreyBg,
                  margin: EdgeInsets.symmetric(horizontal: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Column(
                      children: [
                        Icon(foodIcons[item], color: kGreenAccent, size: 36),
                        SizedBox(height: 10),
                        Text(
                          item,
                          style: TextStyle(
                            color: kGreenDark,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          foods[item]!,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
