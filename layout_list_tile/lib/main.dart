import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Data lokal sebagai list
  final List<Map<String, String>> items = const [
    {"title": "Singa", "subtitle": "King of the Jungle", "description": "Singa adalah karnivora besar dan kuat yang dikenal sebagai 'Raja Hutan''.", "image": "images/singa.jpg"},
    {"title": "Gajah", "subtitle": "Largest land animal", "description": "Gajah dikenal karena kecerdasannya, ingatannya yang kuat, dan gadingnya yang besar.", "image": "images/gajah.jpg"},
    {"title": "Harimau", "subtitle": "Strong and fierce", "description": "Harimau adalah kucing liar terbesar, dikenal karena bulunya yang oranye dan belang-belang hitam.", "image": "images/harimau.jpg"},
    {"title": "Jerapah", "subtitle": "Tallest land animal", "description": "Jerapah adalah mamalia darat tertinggi, dengan leher panjang yang memungkinkan mereka mencapai daun pohon yang tinggi.", "image": "images/jerapah.jpg"},
    {"title": "Panda", "subtitle": "Loves bamboo", "description": "Panda adalah beruang hitam dan putih yang dicintai karena kecintaannya pada bambu dan sifatnya yang lembut.", "image": "images/panda.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Hewan'),
      ),
      body: ListView.builder(
        itemCount: items.length, // Jumlah data dalam list
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(items[index]['image']!, width: 50, height: 50, fit: BoxFit.cover),
              title: Text(items[index]['title']!), // Menampilkan nama hewan
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(items[index]['subtitle']!), // Menampilkan deskripsi singkat
                  Text(items[index]['description']!, style: const TextStyle(fontSize: 12, color: Colors.grey)), // Menampilkan deskripsi
                ],
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}
