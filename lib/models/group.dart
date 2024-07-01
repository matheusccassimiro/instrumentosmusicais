import 'package:flutter/cupertino.dart';

class Group extends ChangeNotifier{
  final String name;
  final String imagePath;


  Group({
    required this.name,
    required this.imagePath,
  });

  String getName(){
    return this.name;
  }
}

