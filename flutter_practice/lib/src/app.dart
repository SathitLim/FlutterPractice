// Import flutter helper library
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'dart:convert';
import 'Models/image_model.dart';
import 'Widgets/imageList.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<ImageModel> imageModels = [];

  void fetchImage() async{
    counter += 1;
    var response = await get('http://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = ImageModel.fromJson(json.decode(response.body));
    
    setState(() {
      imageModels.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ImageList(imageModels),
        floatingActionButton: FloatingActionButton(
          child: Icon( Icons.add ),
          onPressed: fetchImage ,
        ),
        appBar: AppBar(
          title: Text("Let's see some image!"),
        ),
      ),
    );
  }
}