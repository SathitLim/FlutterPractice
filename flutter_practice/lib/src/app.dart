// Import flutter helper library
import 'package:flutter/material.dart';
import 'dart:convert';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }

}

class AppState extends State<App> {
  int counter = 0;
  String link = 'http://jsonplaceholder.typicode.com/photos/';
  var rawJson ='{"url": "http://google.com","id":1}';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add ),
          onPressed:(){
            Test();
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

  void Test(){
    var parsedJson = json.decode(rawJson);
    var imageModel = new ImageModel(parsedJson['id'], parsedJson['url']);
    // print(parsedJson['id']);
    // print(parsedJson['url']);
  }
}

class ImageModel{
  int id;
  String url;

  ImageModel(this.id , this.url);
}