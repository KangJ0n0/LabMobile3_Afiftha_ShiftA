import 'package:flutter/material.dart';
import 'loginpage.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  'https://scontent.fcgk27-1.fna.fbcdn.net/v/t39.30808-6/461092791_890261669685141_650386013230379784_n.jpg?stp=dst-jpg_s600x600&_nc_cat=100&ccb=1-7&_nc_sid=127cfc&_nc_ohc=bf-Y96wsPA8Q7kNvgGTGQJU&_nc_ht=scontent.fcgk27-1.fna&oh=00_AYALKFSw8PCoDLTphXl5RFnjsJ2IM65G42NzptpOLa5Cuw&oe=66F7DBBD',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Selamat Datang di Aplikasi!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    child: Text(
                      ' Mulai ',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
