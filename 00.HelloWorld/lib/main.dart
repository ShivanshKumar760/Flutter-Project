import 'package:flutter/material.dart';

void main() {
  //Now MyApp() is a pre define class / method that comes in the pre written boilor plate code of flutter
//  runApp(const MyApp());
  //but since we deleted it we will start our project with MaterialApp():it is a pre define class / function
  //written by google flutter team which uses a Material design by google.A convenience widget that wraps a number
  //of widget that are commonly required by for Material app design material

  runApp(const MaterialApp(home:Text("Hello World")));
  //we are using material app the parent function to place a text widget on home screen
  //MaterialApp(/*child*/ home:/*child or widget*/Text())
  //Now this above code will place Hello World in corner so to make it in center we
  // use
  //Syntax:-
  /*
  Under Home screen widget we will use its center property and place text in center widget
  and since Text() is child of center we will specify it .

  Center(child:Text())
   */

  //this will override the above code and place the text in center of screen
  runApp(const MaterialApp(home:Center(child:Text("Hello World,Welcome to Flutter!"))));
}

