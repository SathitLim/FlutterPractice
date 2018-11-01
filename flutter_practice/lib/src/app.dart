// Import flutter helper library
import 'package:flutter/material.dart';

// Create a class that will be our custom widget. This class must extend the 'StatelessWidget' base class
class App extends StatelessWidget {
  //Must define a 'build' method that returns the widget that *this* widget will show.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add ),
          onPressed:(){
            print('Hi there!');
          },
        ),
        appBar: AppBar(
          title: Text("Let's see some image!"),
        ),
      ),
    );
  }
}