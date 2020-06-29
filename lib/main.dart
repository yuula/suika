
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String kboyText = 'KBOY';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('コリアンダー')
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text(
                kboyText,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              RaisedButton(
                child: Text('ボタン'),
                onPressed: (){
                  //ここで何か
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
