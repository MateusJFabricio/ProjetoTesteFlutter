import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>
{
  int counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 50,
            width: 50,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton:
        FloatingActionButton(
          onPressed: onTap,
          child: Icon(Icons.print),
        ),
    );
  }

  onTap()
  {
    setState(() {
      counter++;
    });
  }

}