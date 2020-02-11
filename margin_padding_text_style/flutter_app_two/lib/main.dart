import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
      title: "Demo App Two",
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        margin: EdgeInsets.only(top: 15.0),
        padding: EdgeInsets.all(1.0),
        child: Text(
          "My Second Flutter App",
          textDirection: TextDirection.ltr,
          style: TextStyle(decoration: TextDecoration.none,color: Colors.black,fontSize: 20)
        )
      )
    );
  }
}
