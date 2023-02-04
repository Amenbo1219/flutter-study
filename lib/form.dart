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
  String text = '次へ';
  final myFocusNode = FocusNode();
  final myController = TextEditingController();

  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('わいのアプリ!!'),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            TextField(
              //アプリ起動時に自動入力

              autofocus: true,
              decoration: InputDecoration(
                // border: InputBorder.none,
                hintText: 'Enter a search term'
              ),
              onChanged: (text){
                print("First text field:$text");
                name = text;
              },
            ),
            TextField(
              controller: myController,
              focusNode: myFocusNode,
            ),
            ElevatedButton(
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text(myController.text),
                      );
                    },
                  );
                },
                child: Text('新規登録する')),
          ],
        ),
      ),
    );
  }
}
