import 'package:flutter/cupertino.dart';

class Instrument extends ChangeNotifier{
  final String name;
  final String soundPath;
  final String imagePath;
  final String description;

  Instrument({
    required this.name,
    required this.soundPath,
    required this.imagePath,
    required this.description,
  });

  String getName(){
    return this.name;
  }
}

