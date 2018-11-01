// Import flutter helper library
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }

}

class AppState extends State<App> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add ),
          onPressed:(){
            setState(() {
              counter += 1; 
            });
          },
        ),
        appBar: AppBar(
          title: Text("Let's see some image!"),
        ),
      ),
    );
  }
}