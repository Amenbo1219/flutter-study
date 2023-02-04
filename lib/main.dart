import 'package:flutter/material.dart';
import 'package:myapp/main_model.dart';
import 'package:provider/provider.dart';


//setStateを使わずに値を更新する．
void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo Home Page',
      home: ChangeNotifierProvider<MainModel>(
        create: (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('わいのアプリ!!'),
          ),
          body:Consumer<MainModel>(builder: (context, model, child) {
            return Center(
              child: Column(
                children: [
                  Text(
                    model.testText,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  ElevatedButton(
                    child: Text("ボタン"),
                    onPressed: () {
                      model.setTestText();
                    },
                  ),
                ],
              ),
            );
          }
          ),
        ),
      ),
    );
  }
}
