import 'package:flutter/material.dart';
import 'package:jedagjedugepilepsi/homepage.dart';
import 'package:jedagjedugepilepsi/profilmenu.dart';
import 'package:jedagjedugepilepsi/loginpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  Future<void> _logout(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('username');

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home, color: Colors.blue),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: Colors.blue),
            title: Text(
              'Profil',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
          Spacer(),
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              _logout(context);
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Version 1.0.0',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
