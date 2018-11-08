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
        return Image.network(imageModels[index].url);
      },
    );
  }

}