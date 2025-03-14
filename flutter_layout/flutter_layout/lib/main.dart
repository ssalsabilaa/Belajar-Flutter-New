import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghilangkan banner debug
      theme: ThemeData(primarySwatch: Colors.green),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        leading: const Icon(Icons.home),
        title: const Text('Flutter Layout'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0), // Code untuk mengatur margin
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Biar rapi ke kiri
          children: <Widget>[
            Row(
              children: const <Widget>[
                Icon(Icons.archive),
                SizedBox(width: 5), // Beri jarak agar tidak menempel
                Text(
                  'Artikel Terbaru',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10), // Jarak antar widget
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10), // Membuat card lebih estetik
              ),
              elevation: 5, // Memberikan efek bayangan
              child: Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Borobudur_Temple.jpg/320px-Borobudur_Temple.jpg')
                    


                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Candi Borobudur',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}