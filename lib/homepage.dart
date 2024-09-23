import 'package:flutter/material.dart';
import 'package:jedagjedugepilepsi/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var namauser;

  void _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      namauser = prefs.getString('username');
    });
  }

  final List<Map<String, String>> blogs = [
    {
      'title':
          'Kronologi Nomor HP Akun Fufufafa Ganti Nama dari Gibran Jadi Slamet di GoPay',
      'image':
          'https://media.suara.com/pictures/1600x840/2024/09/22/25270-ilustrasi-gibran-rakabuming-raka-dan-akun-fufufafa-yang-buat-heboh-media-sosial.jpg',
      'content':
          'Sederet bukti yang menunjukkan Gibran Rakabuming Raka adalah pemilik akun Fufufafa terus bermunculan. Terbaru, nomor ponsel atau hp yang terhubung ke akun tersebut tercatat dengan nama Gibran.'
    },
    {
      'title': 'Skibidi vs Sigma',
      'image':
          'https://cdn-0001.qstv.on.epicgames.com/EFuLgLUAAXhiSnBNbH/image/landscape_comp.jpeg',
      'content':
          'Rangkuman Jelas pertandingan Skibidi Melawan Sigma di Ohio 30 Februari 2024'
    },
  ];

  @override
  Widget build(BuildContext context) {
    _loadUsername();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      drawer: const Sidemenu(),
      body: ListView.builder(
        itemCount: blogs.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                blogs[index]['image']!.startsWith('http')
                    ? Image.network(blogs[index]['image']!)
                    : Image.asset(blogs[index]['image']!),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    blogs[index]['title']!,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(blogs[index]['content']!),
                ),
                const SizedBox(height: 10),
              ],
            ),
          );
        },
      ),
    );
  }
}
