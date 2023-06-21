import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
/*
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image(image: AssetImage("images/dice1.png")),
      //Cause our image is very large it will go out of screen giving render issue so we have to reduce it's
      //width
    ],
    );
  }
}*/
/*
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Image(image: AssetImage("images/dice1.png"),width: 200.0,),
      //This is one way to do this ie decrease size of image but when we have more than one image
      //coding it manually will become difficult and will be prone to errors


    ],
    );
  }
}*/

/*
To overcome this problem flutter offers a Expand class which takes a child and expand its
width( if present inside Row container )  and height(if present inside Column Container)
as much as it can to take up screen size remaining that is it expand and contract with respect to
screen size available
 */

/*
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child:  Image(image: AssetImage("images/dice1.png")),),
      Expanded(child:  Image(image: AssetImage("images/dice1.png")),),
    ],
    );
  }
}*/

//Now as we can see from line 52 to 61 code is much better cause we don't have to manually code
//width of image instead we used Expanded class which helps in expanding and contracting the image
//with respect to screen size available

//we can even set the flex  ie flexibility property onto the image under Expanded class which
//tell flutter compiler/sdk the ratio of child1 compare to other child ie

//if child1 : Expanded - flex is set to 2
//and child2: Expanded - flex is set to 1 ie child1 will expand 2 times of child2

/*class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(flex:2,child:  Image(image: AssetImage("images/dice1.png")),),
      Expanded(flex:1,child:  Image(image: AssetImage("images/dice1.png")),),
    ],
    );
  }
}*/

//By default flex is set to 1

// class DicePage extends StatelessWidget {
//   var numberOnDice=5;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(children: [
//         //instead of writing Image(image: AssetImage("images/dice1.png")) we can write:
//         //Image.asset("res")
//         Expanded(child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: TextButton(onPressed:(){print("pressed");},
//             child: Image.asset("images/dice${numberOnDice}.png"),),
//         ),),
//         Expanded(child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: TextButton(onPressed:(){print("Right pressed");},child: Image.asset("images/dice1.png"),),
//         ),),
//       ],
//       ),
//     );
//   }
// }
/* The problem with above code is although we used a variable to
change dice image ,so that we dont have to manually change our dice number
but the thing if we now change the above variable dice number
to 1 and we do hot reload and not hot restart

the dice image wont change:

class DicePage extends StatelessWidget {
  //prior value:
  var numberOnDice=5;
  //changed value:
  numberOnDice=2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        //instead of writing Image(image: AssetImage("images/dice1.png")) we can write:
        //Image.asset("res")
        Expanded(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(onPressed:(){print("pressed");},
            child: Image.asset("images/dice${numberOnDice}.png"),),
        ),),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(onPressed:(){print("Right pressed");},child: Image.asset("images/dice1.png"),),
        ),),
      ],
      ),
    );
  }
}

that's because our hot reload only performs reload on
this widget:
Widget build(BuildContext context)
so anything outside it wont come into effect so to handle that just
bring the declaration of var numberOnDice to Widget build(BuildContext context)

*/


// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var numberOnDice=5;
//     numberOnDice;
//     return Center(
//       child: Row(children: [
//         //instead of writing Image(image: AssetImage("images/dice1.png")) we can write:
//         //Image.asset("res")
//         Expanded(child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: TextButton(onPressed:(){print("pressed");},
//             child: Image.asset("images/dice${numberOnDice}.png"),),
//         ),),
//         Expanded(child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: TextButton(onPressed:(){print("Right pressed");},child: Image.asset("images/dice1.png"),),
//         ),),
//       ],
//       ),
//     );
//   }
// }




/*
So Now although our NumberOnDice variable will update as we change it during hot reloadd but the problem is everytime it hot reloads
it build again variableNumberOndDice and allocate memory which makes it not every memory efficient ie every time reloading
will destroy previous memory location with name address numberOnDice and create new memory location memory on dice

so it save our memory efficiency what we can do is we can take numberOnDice variable declaration out and everytime we change the
variable numberOnDice value we do that in Widget build(BuildContext context)


Like  this :




class DicePage extends StatelessWidget {
   var numberOnDice=5;
  @override
  Widget build(BuildContext context) {

    numberOnDice=2;
    return Center(
      child: Row(children: [
        //instead of writing Image(image: AssetImage("images/dice1.png")) we can write:
        //Image.asset("res")
        Expanded(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(onPressed:(){print("pressed");},
            child: Image.asset("images/dice${numberOnDice}.png"),),
        ),),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(onPressed:(){print("Right pressed");},child: Image.asset("images/dice1.png"),),
        ),),
      ],
      ),
    );
  }
}

 */


// class DicePage extends StatelessWidget {
//   var numberOnDice=5;
//   @override
//   Widget build(BuildContext context) {
//
//     numberOnDice=4;
//     return Center(
//       child: Row(children: [
//         //instead of writing Image(image: AssetImage("images/dice1.png")) we can write:
//         //Image.asset("res")
//         Expanded(child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: TextButton(onPressed:(){print("pressed");},
//             child: Image.asset("images/dice${numberOnDice}.png"),),
//         ),),
//         Expanded(child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: TextButton(onPressed:(){print("Right pressed");},child: Image.asset("images/dice1.png"),),
//         ),),
//       ],
//       ),
//     );
//   }
// }

//Now If we see DicePage has one yellow curry line thats because our DicePage is a stateless widget that is ones 
// something is declare inside it,that should not change while app is running and in this app we have declared image 
//and that image should be constant according to stateless widget ie if it is set to 5 it should set to be 5 and 
//not change to 2,so we can remove that but then we will loose our hot reload functionality

//so to overcome that we can use Stateful widget


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var numberOnDiceLeft=1;
  var numberOnDiceRight=1;

  void changeDice()
  {
    setState(() {
        numberOnDiceLeft=Random().nextInt(6)+1;
        numberOnDiceRight=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(children: [
        //instead of writing Image(image: AssetImage("images/dice1.png")) we can write:
        //Image.asset("res")
        Expanded(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(onPressed:(){
            // setState(() {
            //   numberOnDiceLeft=Random().nextInt(6)+1;
            //   numberOnDiceRight=Random().nextInt(6)+1;
            // });
            changeDice();
          },
            child: Image.asset("images/dice${numberOnDiceLeft}.png"),),
        ),),
        Expanded(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextButton(onPressed:(){
            // setState(() {
            //   numberOnDiceRight=Random().nextInt(6)+1;
            // });
            changeDice();

          },child: Image.asset("images/dice${numberOnDiceRight}.png"),),
        ),),
      ],
      ),
    );
  }
}




