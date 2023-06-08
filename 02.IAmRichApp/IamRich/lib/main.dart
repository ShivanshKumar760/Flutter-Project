import 'package:flutter/material.dart';

//The main function is the starting point for all our flutter program
void main() {
  /*
  runApp(MaterialApp(/*at home page of app*/home:/*at home page we need a text*/Text("Hello World")));
  //material app is a function define by google based on material theme
  */

  /*
  runApp(
    const MaterialApp(
      home: Center(
        child: Text("Hello World!"),
      ),
    ),
  );
  //Center(//is a function to center the element in center child://specifies the child of center function)
*/

  //creating a scaffolding a blank canvas to palace our widget

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text("I am Rich"), centerTitle: true, backgroundColor: Colors.blueGrey[900],),
        backgroundColor: Colors.blueGrey,
        //body:Center(child: Image(image: NetworkImage('https://media.istockphoto.com/id/176982445/photo/ruby-xl.jpg?s=612x612&w=0&k=20&c=XjNZgXXR6ipGOVkSsV7UNnBbEaD48VbkB3wyKg-ArAk=')))
        body:const Center(child: Image(image: AssetImage('Images/diamond.png'),
          ),
          )
      ),
    ),
  );
}
