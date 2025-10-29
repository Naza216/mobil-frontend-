import 'package:flutter/material.dart';
import '../colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name = "Chan"; // Nama bisa diambil dari backend nanti

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Profile',
          style: TextStyle(color: kGreenDark, fontWeight: FontWeight.bold),
        ),
        iconTheme: IconThemeData(color: kGreenAccent),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(24),
        children: [
          Center(
            child: CircleAvatar(
              radius: 48,
              backgroundColor: kGreenAccent,
              child: Text(
                name[0].toUpperCase(),
                style: TextStyle(fontSize: 38, color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kGreenDark,
              ),
            ),
          ),
          SizedBox(height: 24),

          // Menu Profil
          _menuItem(
            context,
            icon: Icons.edit,
            text: "Edit Profile",
            onTap: () {},
          ),
          _menuItem(
            context,
            icon: Icons.autorenew,
            text: "Renew Plans",
            onTap: () {},
          ),
          _menuItem(
            context,
            icon: Icons.settings,
            text: "Settings",
            onTap: () {},
          ),
          _menuItem(context, icon: Icons.policy, text: "Terms", onTap: () {}),
          _menuItem(
            context,
            icon: Icons.privacy_tip,
            text: "Privacy Policy",
            onTap: () {},
          ),
          _menuItem(context, icon: Icons.logout, text: "Log Out", onTap: () {}),
        ],
      ),
    );
  }

  Widget _menuItem(
    BuildContext context, {
    required IconData icon,
    required String text,
    VoidCallback? onTap,
  }) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6),
      color: kGreyBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Icon(icon, color: kGreenDark),
        title: Text(text, style: TextStyle(color: kGreenDark)),
        onTap: onTap,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        trailing: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 18,
          color: Colors.grey[400],
        ),
      ),
    );
  }
}
