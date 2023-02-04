import 'package:flutter/material.dart';
import 'package:myapp/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //For文
  final items = List<String>.generate(10000, (i) => 'Item $i');

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('わいのアプリ!!'),
      ),
      body: Container(
        //表形式で表示
        width: double.infinity,
        child: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Column(
              children: <Widget>[
                Expanded(
                  child: Image.network(
                      'https://pbs.twimg.com/media/Flb3Z1aacAE-zpe?format=jpg&name=small'),
                ),
                Text('$index'),
              ]
            );
          }),
        ),
      ),
    );
  }
}
