// ignore_for_file: prefer_const_constructors

import 'package:datapass/calculator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  TextEditingController uname = TextEditingController();
  TextEditingController countercontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Home"),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: TextField(
                controller: uname,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: 'PLease enter your name',
        hintStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
     ),
        
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
    ),
            
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: TextField(
                controller: countercontroller,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                hintText: "please enter your number",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
              ),
                border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
          borderSide: BorderSide(
            color: Colors.black,
            width: 1.0,
          ),
        ),
      ),
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            FloatingActionButton(
              splashColor: Color(0xFFFF9100),
              shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(15)
     ),
              onPressed: () {
                String sendname = uname.text;
                int sendcounter = int.parse(countercontroller.text);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Calculator(
                          name: sendname,
                          counter: sendcounter,
                        )));
              },
              child: Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
