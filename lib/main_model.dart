import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
  String kboyText = 'KBOYさん';

  void changeKboyText(){
    kboyText = 'kboyさんかっこいいわ!!!';
    notifyListeners();
  }
}
