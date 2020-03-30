import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Simple Interest Calculator App',
    home: SIForm(),
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo,
        accentColor: Colors.indigoAccent),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final double _minimumPadding = 5.0;
  var selectedCurrency;
  var resultValue = '';
  TextEditingController principalController = TextEditingController();
  TextEditingController rioController = TextEditingController();
  TextEditingController termsController = TextEditingController();
  var key = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedCurrency = _currencies[0];
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
//			resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: Text('Simple Interest Calculator'),
        ),
        body: Form(
          key: key,
          child: Padding(
            padding: EdgeInsets.all(_minimumPadding * 2),
            child: ListView(
              children: <Widget>[
                getImageAsset(),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: textStyle,
                      controller: principalController,
                      validator: (String value) {
                        if (value.isEmpty || isAlpha(value)) {
                          return "Enter valid valid principal please:";
                        }
                      },
                      decoration: InputDecoration(
                          errorStyle:
                          TextStyle(fontSize: 15.0, color: Colors.yellow),   labelText: 'Principal',
                          hintText: 'Enter Principal e.g. 12000',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: rioController,
                      style: textStyle,
                      validator: (String value) {
                        if (value.isEmpty || isAlpha(value)) {
                          return "Enter valid rate of intrest please:";
                        }
                      },
                      decoration: InputDecoration(
                          errorStyle:
                              TextStyle(fontSize: 15.0, color: Colors.yellow),
                          labelText: 'Rate of Interest',
                          hintText: 'In percent',
                          labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        top: _minimumPadding, bottom: _minimumPadding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                            child: TextFormField(
                          keyboardType: TextInputType.number,
                          controller: termsController,
                          style: textStyle,
                          validator: (String value) {
                            if (value.isEmpty || isAlpha(value)) {
                              return "Enter valid terms please:";
                            }
                          },
                          decoration: InputDecoration(
                              errorStyle:
                              TextStyle(fontSize: 15.0, color: Colors.yellow),   labelText: 'Term',
                              hintText: 'Time in years',
                              labelStyle: textStyle,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        )),
                        Container(
                          width: _minimumPadding * 5,
                        ),
                        Expanded(
                            child: DropdownButton<String>(
                          items: _currencies.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          value: selectedCurrency,
                          onChanged: (String newValueSelected) {
                            setValueToDropDown(newValueSelected);
                            // Your code to execute, when a menu item is selected from dropdown
                          },
                        ))
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: _minimumPadding, top: _minimumPadding),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).accentColor,
                            textColor: Theme.of(context).primaryColorDark,
                            child: Text(
                              'Calculate',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {
                              setState(() {
                                if (key.currentState.validate()) {
                                  resultValue = calculateResult();
                                }
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).primaryColorDark,
                            textColor: Theme.of(context).primaryColorLight,
                            child: Text(
                              'Reset',
                              textScaleFactor: 1.5,
                            ),
                            onPressed: () {
                              setState(() {
                                _reset();
                              });
                            },
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: EdgeInsets.all(_minimumPadding * 2),
                  child: Text(
                    resultValue,
                    style: textStyle,
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('assets/money.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );

    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }

  void setValueToDropDown(String newValueSelected) {
    setState(() {
      selectedCurrency = newValueSelected;
    });
  }

  String calculateResult() {
    double principal = double.parse(principalController.text);
    double roi = double.parse(rioController.text);
    double term = double.parse(termsController.text);

    double totalAmountPayable = principal + (principal * roi * term) / 100;

    String result =
        'After $term years, your investment will be worth $totalAmountPayable $selectedCurrency';
    return result;
  }

  void _reset() {
    principalController.text = '';
    rioController.text = '';
    termsController.text = '';
    resultValue = '';
    selectedCurrency = _currencies[0];
  }

   bool isAlpha(String name) {
    return name.contains(new RegExp(r'[A-Z]'));
  }
}
