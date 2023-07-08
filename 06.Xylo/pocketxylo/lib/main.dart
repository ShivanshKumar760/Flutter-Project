import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/src/audio_cache.dart';
void main() => runApp(XylophoneApp());

// class XylophoneApp extends StatelessWidget {
//   void playSound(int soundNumber)
//   {
//     final player =AudioPlayer();
//     player.play(AssetSource('note${soundNumber}.wav'));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               Expanded(
//                 child: TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red))
//                 ,onPressed: ()
//                 {
//                     playSound(1);
//                 },
//
//                   child: Text(" "),),
//               ),
//               Expanded(
//                 child: TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange))
//                   ,onPressed: (){
//                    playSound(2);
//                   },
//                   child: Text(" "),),
//               ),
//
//               Expanded(
//                 child: TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow))
//                   ,onPressed: (){
//                     playSound(3);
//                   },
//                   child: Text(" "),),
//               ),
//
//               Expanded(
//                 child: TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green))
//                   ,onPressed: (){
//                   playSound(4);
//                   },
//                   child: Text(" "),),
//               ),
//
//               Expanded(
//                 child: TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.teal))
//                   ,onPressed: (){
//                   playSound(5);
//                   },
//                   child: Text(" "),),
//               ),
//
//               Expanded(
//                 child: TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue))
//                   ,onPressed: (){
//                   playSound(6);
//                   },
//                   child: Text(" "),),
//               ),
//
//               Expanded(
//                 child: TextButton(style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple))
//                   ,onPressed: (){
//                   playSound(7);
//                   },
//                   child: Text(" "),),
//               )
//             ],
//           )
//         ),
//       ),
//     );
//   }
// }























class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber)
  {
    final player =AudioPlayer();
    player.play(AssetSource('note${soundNumber}.wav'));
  }

  Expanded Build({required Color color,required int n,required String Message})
  {
    return Expanded(
      child: TextButton(style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(color))
        ,onPressed: ()
        {
          playSound(n);
        },
        child: Text(Message,style:TextStyle(color: Colors.black,fontSize:20.0,fontWeight: FontWeight.bold)),),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               Build(color: Colors.red,n:1,Message:"R Click Me to play sound 1"),
               Build(color: Colors.orange,n:2,Message:"O Click Me to play sound 2"),
                Build(color: Colors.yellow,n:3,Message:"Y Click Me to play sound 3"),
                Build(color:Colors.green,n:4,Message:"G Click Me to play sound 4"),
                Build(color: Colors.teal,n:5,Message:"T Click Me to play sound 5"),
                Build(color: Colors.purple,n:6,Message:"P Click Me to play sound 6"),
                Build(color:Colors.blue,n:7,Message:"B Click Me to play sound 7"),
              ],
            )
        ),
      ),
    );
  }
}