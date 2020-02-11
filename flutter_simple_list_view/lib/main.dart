import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Basic List View"),
      ),
      body: MyWorkClass(),
    ),
  ));
}

class MyWorkClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return getListView(context);
  }

  Widget getListView(BuildContext context) {
    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.landscape),
          title: Text("Landscape"),
          subtitle: Text("Beautiful View !"),
          trailing: Icon(Icons.wb_sunny),
          onTap: () {
            debugPrint("Landscape tapped");
            show(context);
          },
        ),
        ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text("Windows"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text("Windows"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text("Windows"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text("Windows"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.laptop_chromebook),
            title: Text("Windows"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            onTap: () {
              show(context);
            }),
        ListTile(
            leading: Icon(Icons.phone),
            title: Text("Phone"),
            onTap: () {
              show(context);
            })
      ],
    );

    return listView;
  }

  void show(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Clicked"),
      content: Text("Have a pleasant day !"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
