import 'package:flutter/material.dart';
import 'Question.dart';
import 'quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(Quizzy());

// class Quizzy extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade900,
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0),
//             child: QuizPage(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// class QuizPage extends StatefulWidget {
//   const QuizPage({super.key});
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         //1.
//         const Expanded(
//           flex: 5,
//           child: Padding(
//            padding: EdgeInsets.all(10.0),
//             child: Center(
//               child: Text('This is where the question text will go.',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 25.0, color: Colors.white,),),
//             ),),),
//         //2.
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child:TextButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
//                 child:const Text("True", style: TextStyle(color: Colors.white, fontSize: 20.0,),),),
//           ),),
//         //3.
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child:TextButton(onPressed: (){},
//                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
//               child:const Text("False",
//                 style: TextStyle(color: Colors.white, fontSize: 20.0,),
//               ),
//             ),
//           ),
//         ),
//         //TODO: Add a Row here as your score keeper
//       ],
//     );
//   }
// }

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,



*/



// class Quizzy extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.grey.shade900,
//         body: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10.0),
//             child: QuizPage(),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//
//
// class QuizPage extends StatefulWidget {
//   const QuizPage({super.key});
//   @override
//   _QuizPageState createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         //1.
//         const Expanded(
//           flex: 5,
//           child: Padding(
//            padding: EdgeInsets.all(10.0),
//             child: Center(
//               child: Text('This is where the question text will go.',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 25.0, color: Colors.white,),),
//             ),),),
//         //2.
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child:TextButton(onPressed: (){},style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
//                 child:const Text("True", style: TextStyle(color: Colors.white, fontSize: 20.0,),),),
//           ),),
//         //3.
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child:TextButton(onPressed: (){},
//                 style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
//               child:const Text("False",
//                 style: TextStyle(color: Colors.white, fontSize: 20.0,),
//               ),
//             ),
//           ),
//         ),
//         /*Now lets add a row inside our column widget */
//         //Now the role of Row() widget will be to add icons to display correct and incorrect answer
//         //for that we will use icon to display correct and wrong answer
//         Row(
//           children:<Widget>[
//             Icon(Icons.check,color:Colors.green),
//             Icon(Icons.close,color: Colors.red,),
//           ],
//         )
//       ],
//     );
//   }
// }


/*Now if we see that inside Row() widget children property is a type of list as it starts with square brackets[]
Now List is collection of similar data type so what we can so do is instead of adding Icon inside children we
can create a list to store Icon
Like This :


List scoreKeeper =[ Icon(Icons.check,color:Colors.green).Icon(Icons.close,color: Colors.red,)]

Now inside Row(children:) we can assign the list

Like below :

Row(children:scoreKeeper)

#Now remember here that we can assign scoreKeeper to children because children itself is a List type structure thats
why we can assign it ,if any one of the scoreKeeper and children will be of other data structure like map it wont be
possible to assign it .


Now if we look closely into our Row()


 Row(
          children:<Widget>[//We can see that children is a <Widget> type list
            Icon(Icons.check,color:Colors.green),
            Icon(Icons.close,color: Colors.red,),
          ],
        )

        and our scoreKeeper is a dynamic list that is it can store Widget , integer ,string any data type
        '
       which if not careful may lead to error as scoreKeeper is assigned to children of Row(), and children  can take
       only Widget


       To prevent that we can change scoreKeeper data type from dynamic to Widget like below:

       List<Widget> scoreKeeper=[ Icon(Icons.check,color:Colors.green).Icon(Icons.close,color: Colors.red)]

       //or since it is storing Icon only we can make it a Icon type

 List<Icon> scoreKeeper=[ Icon(Icons.check,color:Colors.green).Icon(Icons.close,color: Colors.red)]

 Now if we assign our scoreKeeper to children list it wont generate error as Icon itself is a type of WIdget
 */

class Quizzy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body://QuizPage(),
         SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ));
  }
}


class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper=[];
  //List<String> question=["You can lead a cow down stairs but not upstairs?","Approximately one quartet of human bones are in feet?","A slug's blood is green?","The End dont press any button now"];
  // int questionNumber=0;
  //List<bool> answer =[false,true,true];
  /*Inserting Question and answer via maintaining a separate list is very difficult
  So in order to make it easy make a class Question which will have member data question and answer
  which will get assigned for each object and each object will have it own unique copy of member data*/


   // List<Question> questionBank=
   //     [
   //       Question(q:"You can lead a cow down stairs but not upstairs?",a:false),
   //       Question(q:"Approximately one quartet of human bones are in feet?",a:true),
   //       Question(q:"A slug's blood is green?",a:true),
   //     ];
  int score=0;
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer=(quizBrain.getCorrectAnswer());
      setState(()
      {
        // quizBrain.nextQuestion();
        // scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
        if (quizBrain.isFinished() == true) {
          //TODO Step 4 Part A - show an alert using rFlutter_alert,

          //This is the code for the basic alert from the docs for rFlutter Alert:
          //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

          //Modified for our purposes:
          Alert(
            context: context,
            title: 'Finished!',
            desc: 'You\'ve reached the end of the quiz,\nAnd your score is $score',
          ).show();

          //TODO Step 4 Part C - reset the questionNumber,
          quizBrain.reset();

          //TODO Step 4 Part D - empty out the scoreKeeper.
          scoreKeeper = [];
          score=0;
        }

        else {
          if (userPickedAnswer == correctAnswer)
          {
            scoreKeeper.add(Icon(Icons.check, color: Colors.green,));
            score++;
          }
          else {
            scoreKeeper.add(Icon(Icons.close, color: Colors.red,));
          }
          quizBrain.nextQuestion();
        }
      });



  }
  QuizBrain quizBrain=QuizBrain();
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        //1.
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(0.0),
            child: Center(
              // child: Text((quizBrain.questionBank[questionNumber].question)!,
              child: Text((quizBrain.getQuestionText()),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0, color: Colors.white,),),
            ),),),
        //2.
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child:TextButton(onPressed: (){
              // bool correctAnswer=(quizBrain.getCorrectAnswer());
              // if(correctAnswer==true)
              // {
              //   setState(()
              //   {
              //     quizBrain.nextQuestion();
              //     scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
              //   });
              //
              // }
              // else
              //   {
              //     setState(()
              //     {
              //       // questionNumber++;
              //       quizBrain.nextQuestion();
              //       scoreKeeper.add(Icon(Icons.close,color: Colors.red,));
              //     });
              //   }
              checkAnswer(true);
            },style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
              child:const Text("True", style: TextStyle(color: Colors.white, fontSize: 20.0,),),),
          ),),
        //3.
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child:TextButton(onPressed: ()
            {
              // bool correctAnswer=(quizBrain.getCorrectAnswer());
              // if(correctAnswer==false)
              // {
              //   setState(()
              //   {
              //   // questionNumber++;
              //     quizBrain.nextQuestion();
              //   scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
              //   });
              // }
              // else
              //   {
              //     setState(()
              //     {
              //       // questionNumber++;
              //       quizBrain.nextQuestion();
              //       scoreKeeper.add(Icon(Icons.close,color: Colors.red,));
              //     });
              //   }
              checkAnswer(false);
            },
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
              child:const Text("False",
                style: TextStyle(color: Colors.white, fontSize: 20.0,),
              ),
            ),
          ),
        ),
        /*Now lets add a row inside our column widget */
        //Now the role of Row() widget will be to add icons to display correct and incorrect answer
        //for that we will use icon to display correct and wrong answer
        Row(
          children:scoreKeeper
        )
      ],
    );
  }
}
