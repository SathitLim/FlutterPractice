import 'package:flutter/material.dart';
import '../Models/image_model.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> imageModels;
  ImageList(this.imageModels);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: imageModels.length,
      itemBuilder: (context , int index) {
        return buildImage(imageModels[index]);
      },
    );
  }

  //Build container for collapse code and separate code.
  Widget buildImage(ImageModel imagemodel) {
    return Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            )
          ),
          margin: const EdgeInsets.all(10.0), 
          child: Column(
            children: <Widget>[
              Padding(
                child: Image.network(imagemodel.url),
                padding: EdgeInsets.only(bottom: 20.0),
              ),
              Text(imagemodel.title),
            ],
          ),
        );
  }
}