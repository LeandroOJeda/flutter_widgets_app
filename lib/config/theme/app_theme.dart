import 'package:flutter/material.dart';

const List<Color> colorList = [

  Colors.black,
  Colors.teal,
  Colors.red,
  Colors.blue,
  Colors.indigoAccent,
  Colors.yellow,

];


class AppTheme {

  final int selectedColor;
  final bool isDarkmode;


  AppTheme({
    this.isDarkmode = false, 
    this.selectedColor=0
  }): assert(
    selectedColor >= 0 && selectedColor <= colorList.length -1
  );

  ThemeData getTheme() {

  return ThemeData(
    brightness: isDarkmode? Brightness.dark:Brightness.light,
    colorSchemeSeed: colorList [selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    )
  );}

}