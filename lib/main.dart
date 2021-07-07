import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Textfield Widget',
    theme: ThemeData(
      primarySwatch: Colors.purple,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Inkwell'),
      ),
      body: Home(),
    ),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = "";
  bool secure = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('on tap');
      },
      child: Container(
        height: 50,
        width: 100,
        alignment: Alignment.center,
        child: Text('Button'),
      ),
    );
  }
}
