import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Stack',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Grid'),
      ),
      body: Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      elevation: 5,
      shadowColor: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
        side: BorderSide(
          color: Colors.red,
          width: 2,
        ),
      ),
      child: Container(
        width: 300,
        height: 300,

      ),
    );
  }
}

