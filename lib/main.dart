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
        title: Text('Textfield'),
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
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                print('Raised Button Tapped');
              },
              child: Text('Click Me'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Elevated Button Tapped');
              },
              child: Text('Click Me'),
            ),
            FlatButton(
                onPressed: () {
                  print('Flat Button Tapped');
                },
                child: Text('Click Me')),
            TextButton(onPressed: () {
              print('Text Button Tapped');
            },
                child: Text('Click Me')),
            ElevatedButton.icon(
                onPressed: (){
                  print('Icon Pressed');
                },
                icon: Icon(Icons.account_circle),
                label: Text('Click Me')),
            IconButton(
              onPressed: (){
                print('IconButton Pressed');
              },
              icon: Icon(Icons.account_circle),
            ),
            FloatingActionButton(onPressed: (){
              print('floating Button');
            })
          ],
        ),
      ),
    );
  }
}
