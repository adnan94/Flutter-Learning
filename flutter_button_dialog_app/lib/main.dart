import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
          appBar: AppBar(title: Text("My First App Screen")),
          body: Material(
            color: Colors.purple,
            child: new Container(
              child: Center(
                child: Container(
                    margin: EdgeInsets.only(top: 30.0),
                    width: 250.0,
                    height: 50.0,


                    child: RaisedButton(
                        color: Colors.deepOrange,
                        child: Text(
                          "Book Your Flight",
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700),
                        ),
                        elevation: 6.0,
                        onPressed: () => bookFlight(context))),


              ),
            ),
          )
      ),
    );


  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
