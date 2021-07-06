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
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'type your name',
                hintStyle: TextStyle(
                  color: Colors.red,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                prefixIcon: Icon(
                  Icons.account_circle,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    secure ? Icons.remove_red_eye : Icons.security),
                  onPressed: () {
                    setState(() {
                      secure = !secure;
                    });
                  },
                ),
                errorText: text.isEmpty ? 'Empty' : null,
                labelText: 'Name',
                labelStyle: TextStyle(
                  color: Colors.orange,
                  fontSize: 18,
                )),
            keyboardType: TextInputType.text,
            obscureText: secure,
            obscuringCharacter: '*',
            maxLength: 8,
            // maxLines: 2,
            onChanged: (value) {
              text = value;
            },
            onSubmitted: (value) {
              setState(() {
                text = value;
                print(text);
              });
            },
          ),
        ],
      ),
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
