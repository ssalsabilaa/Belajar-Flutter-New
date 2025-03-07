import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Click Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.lightBlue[50],
      ),
      home: ClickCounterScreen(title: 'Aplikasi Flutter Click Counter'),
    );
  }
}

class ClickCounterScreen extends StatefulWidget {
  final String title;

  ClickCounterScreen({Key? key, required this.title}) : super(key: key);

  @override
  _ClickCounterScreenState createState() => _ClickCounterScreenState();
}

class _ClickCounterScreenState extends State<ClickCounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://ichef.bbci.co.uk/news/800/cpsprodpb/C422/production/_93901205_gettyimages-185001986.jpg',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10.0),
            Text(
              'Ada berapa banyak Gajah diatas?',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.blueGrey),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Text(
                '$_counter',
                style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.blueAccent),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: Text('Tambah 1', style: TextStyle(fontSize: 20.0)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.green,
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: Text('Kurang 1', style: TextStyle(fontSize: 20.0)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.orange,
                  ),
                ),
                SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: _resetCounter,
                  child: Text('Hapus', style: TextStyle(fontSize: 20.0)),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
