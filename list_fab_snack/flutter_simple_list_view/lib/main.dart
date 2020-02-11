import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Basic List View"),
      ),
      body: MyWorkClass(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        tooltip: "Add One More Item...",
      ),
    ),
  ));
}

class MyWorkClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return getListView(context);
  }

  List<String> getListElements() {
    var items = List<String>.generate(1000, (counter) => "Item $counter");
    return items;
  }

  Widget getListView(BuildContext context) {
    var listItems = getListElements();

    var listView = ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          showSnackBar(context, '${listItems[index]} was tapped');
        },
        onLongPress: () {
          show(context, '${listItems[index]} was tapped');
        },
      );
    });

    return listView;
  }

  void show(BuildContext context, String s) {
    var alertDialog = AlertDialog(
      title: Text("Clicked"),
      content: Text("You clicked item at ${s}"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }

  void showSnackBar(BuildContext context, String item) {
    var snackBar = SnackBar(
      content: Text("You just tapped $item"),
      duration: Duration(seconds: 1),
      action: SnackBarAction(
          label: "Dismiss",
          onPressed: () {
            debugPrint('Performing dummy UNDO operation');
          }
      ),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }
}

