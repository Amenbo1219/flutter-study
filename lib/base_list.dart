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
        width: double.infinity,
        child: Container(
          //ColmnだとHeightを超えてしまうと下にスクロールができない．しかし，リストだとスクロールして情報を参照することが可能
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.info),
                title: Text('お問い合わせ'),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  //画面遷移
                  Navigator.push(
                    context,MaterialPageRoute(
                      builder: (context) =>  NextPage('hello')
                    ),
                  );
                },
              ),

              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
              ListTile(
                leading: Icon(Icons.nature),
                title: Text('Name'),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
              ListTile(
                leading: Icon(Icons.nature),
                title: Text('Name'),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
              ListTile(
                leading: Icon(Icons.nature),
                title: Text('Name'),
              ),
              ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
              ListTile(
                leading: Icon(Icons.nature),
                title: Text('Name'),
              ),              ListTile(
                leading: Icon(Icons.map),
                title: Text('Map'),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                title: Text('Album'),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Phone'),
              ),
              ListTile(
                leading: Icon(Icons.nature),
                title: Text('Name'),
              ),
              Text('name'),
            ],
          ),
        ),
      ),
    );
  }
}
