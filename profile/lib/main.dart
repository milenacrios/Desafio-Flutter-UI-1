import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Epic',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'App Epic'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Center(
                child: CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('lib/assets/lucca.jpg'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Center(
                child: Text(
                  'Lucca Rios Alencar',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: 'Merry Christmas 2021'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: Center(
                child: Text(
                  'Lucca é um gatinho muito doce e comilão. Possui 4 meses e é adorado por todos! Ele também adora morder as pessoas e arranhar o sofá. Ás vezes faz xixi na cama como uma criança, mas é um gato adorável!',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Nunito'),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Text(
              '$_counter',
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'Merry Christmas 2021',
                fontSize: 80,
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            stops: [
              0.1,
              0.4,
              0.6,
              0.9,
            ],
            colors: [Colors.yellow, Colors.red, Colors.indigo, Colors.teal],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
