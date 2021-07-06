import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Text Widget',
    theme: ThemeData(
      primarySwatch: Colors.purple,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.grey,
      child: Text('text ex,text ex,text ex,text ex,text ex,text ex,text ex,',
        textAlign: TextAlign.center,
        textScaleFactor: 2,
       maxLines: 2,
       style: TextStyle(
         color: Colors.red,
         fontSize: 11,
         fontFamily: 'Festive',
         //fontStyle: FontStyle.italic,
         fontWeight: FontWeight.w500,
         letterSpacing: 2,
         wordSpacing: 5,
       ),
        overflow: TextOverflow.ellipsis,

      ),

    );
  }
}

