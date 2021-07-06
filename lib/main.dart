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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<int> list = [];

  @override
  void initState() {
    super.initState();
    for(int i=0; i<=50;i++){
      list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext cx, int index){
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            color: Colors.blue,
            child: Text('${list[index]}'),
            alignment: Alignment.center,
          ),
        );
        });
  }
}



//GridView.count(
//       crossAxisCount: 2,
//       mainAxisSpacing: 10,
//       crossAxisSpacing: 10,
//       children: [
//         Container(
//           color: Colors.red,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),
//         Container(
//           color: Colors.blue,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),
//         Container(
//           color: Colors.green,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),Container(
//           color: Colors.red,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),
//         Container(
//           color: Colors.blue,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),
//         Container(
//           color: Colors.green,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),
//         Container(
//           color: Colors.red,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),
//         Container(
//           color: Colors.blue,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),
//         Container(
//           color: Colors.green,
//           child: Text('Grid'),
//           alignment: Alignment.center,
//         ),
//       ],
//     );