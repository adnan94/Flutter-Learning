import 'package:flutter/material.dart';

void main() => runApp(MyStatefulWidget());

class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return WidgetState();
  }
}

class WidgetState extends State<MyStatefulWidget> {
  String cityName = "";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("stateful widget"),
        ),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                TextField(
                  onSubmitted: (String input) {
                    setState(() {
                      cityName = input;
                    });
                  },
                ),
                Padding(
                    padding: EdgeInsets.all(15),
                    child: Text("The name of city is $cityName")),
              ],
            )),
      ),
    );
  }
}
