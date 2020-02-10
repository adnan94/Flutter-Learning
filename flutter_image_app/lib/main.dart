import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var img = new AssetImage('assets/picture.jpg');
    var image = new Image(image: img,width: 250,height: 250);

    return Container(
      child: Scaffold(
        appBar: AppBar(title: Text("My First App Screen")),
        body: Material(
          child: new Container(child: Center(child: image,),
          color: Colors.purple,
          )
        ),
      )
    );

  }

}
