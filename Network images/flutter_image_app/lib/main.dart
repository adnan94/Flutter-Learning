import 'package:flutter/material.dart';

void main() {
	runApp(MaterialApp(
			debugShowCheckedModeBanner: false,
			title: "My Flutter App",
			home: Scaffold(
					appBar: AppBar(
						title: Text("My First App Screen"),
					),
					body:  Screen1()
			)));
}

class Screen1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
		AssetImage assetImage = AssetImage('images/flight.png');
		Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    // TODO: implement build
    return Material(
			color: Colors.lightBlueAccent,
			child: Column(children: <Widget>[

				Row(children: <Widget>[
					Center(
						child: Image(image: NetworkImage('http://i.imgur.com/DvpvklR.png'), width: 150.0, height: 150.0),
					)
				]),Row(children: <Widget>[
					Center(
						child: Image(image: NetworkImage('http://i.imgur.com/DvpvklR.png'), width: 150.0, height: 150.0),
					)
				]),
				]),
		);

	}

}