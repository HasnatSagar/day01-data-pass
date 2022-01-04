 import 'package:flutter/material.dart';
 import 'page2.dart';

class Calculator extends StatefulWidget {
  //const Calculator({Key? key}) : super(key: key);
  String ?name;
  int? counter;
  String? value;
  Calculator({this.name, this.counter, this.value});
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  increament() {
    widget.counter = widget.counter! * 5;
  }

  decreament() {
    widget.counter = widget.counter! - 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${widget.counter}",
              style: TextStyle(fontSize: 20.0),
            ),
            MaterialButton( 
              onPressed: () {
                setState(() {
                  increament();
                });
              },
              child: Text("Increament"),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  decreament();
                });
              },
              child: Text("Decreament"),
            ),
            Text(
              "Created by: ${widget.name}",
              style: TextStyle(fontSize: 30.0),
            ),
            Text(
              "Started from: ${widget.counter}",
              style: TextStyle(fontSize: 30.0),
            ),
            FloatingActionButton(onPressed: () {
                
                String? valuee = widget.name;
                
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Page2(
                          value: valuee,
                          
                        )));
              },
              child: Text("Next"),
            ),
          ]
        ),
      ),
    );
  }
}
