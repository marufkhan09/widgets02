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
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        Container(
          color: Colors.red,
          child: Text('Grid'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.blue,
          child: Text('Grid'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.green,
          child: Text('Grid'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.red,
          child: Text('Grid'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.blue,
          child: Text('Grid'),
          alignment: Alignment.center,
        ),
        Container(
          color: Colors.green,
          child: Text('Grid'),
          alignment: Alignment.center,
        ),
      ],
    );
  }
}

//  return Center(
//       child: Stack(
//         //used clipBehavior Clip.none instead of overflow.visible which is deprecated
//         clipBehavior: Clip.hardEdge,
//         // mainAxisAlignment: MainAxisAlignment.center,
//         //alignment: Alignment.center,
//         children: [
//           Container(
//             width: 200,
//             height: 200,
//             color: Colors.red,
//           ),
//           Positioned(
//             bottom: 0,
//             left: 0,
//             child: Container(
//
//               width: 100,
//               height: 100,
//               color: Colors.blue,
//             ),
//           ),
//           Positioned(
//             bottom: -25,
//             right: 10,
//             child: Container(
//               width: 50,
//               height: 50,
//               color: Colors.green,
//             ),
//           ),
//         ],
//       ),
//
//     );
