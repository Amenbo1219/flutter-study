
import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier{
  String testText = 'testes';

  void setTestText(){
    testText = 'テスト！！';
    notifyListeners();
  }
}