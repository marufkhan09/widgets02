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
      color: Colors.blue[100],
      //child: Image.network('https://images.unsplash.com/photo-1592194996308-7b43878e84a6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80'),
        child: Image.asset('assets/images/cat1.jpg'),
    );
  }
}

//Text('text ex,text ex,text ex,text ex,text ex,text ex,text ex,',
//         textAlign: TextAlign.center,
//         textScaleFactor: 2,
//        maxLines: 2,
//        style: TextStyle(
//          color: Colors.red,
//          fontSize: 11,
//          fontFamily: 'Festive',
//          //fontStyle: FontStyle.italic,
//          fontWeight: FontWeight.w500,
//          letterSpacing: 2,
//          wordSpacing: 5,
//        ),
//         overflow: TextOverflow.ellipsis,
//
//       ),
