import "package:flutter/material.dart";

void main() {
  runApp(new Myclass());
}

class Myclass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "My Flutter App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: Text("My First App Screen")),
          body: Material(
            color: Colors.lightBlueAccent,
            child: Column(children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                )),
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                )),
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ))
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                )),
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                )),
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ))
              ]),
              Row(children: <Widget>[
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                )),
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                )),
                Expanded(
                    child: Text(
                  "Hello Flutter",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ))
              ])
            ]),
          ),
        ));
  }
}
