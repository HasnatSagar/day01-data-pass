import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  String? value;
  Page2 ({this.value});

  //const Page2({ Key? key }) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Page2"),
        centerTitle: true,
      ),
      body: Container(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Center(child: Text("value is: ${widget.value}"))
          ],
        ),
      ),
    );
  }
}