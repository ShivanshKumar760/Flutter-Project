import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
    /*Now although the below code develops a UI for the mobile it doesn't have a hot reload support
    and that hot reload is not there in this code cause hot reload uses a override build,which actually build
    that part of code which is updated this can be done via two state widget
    1.Stateless Widget and 2.Stateful Widget
    Stateless being the easiest one ,Stateless is a mutable widget state that means it only work on those state
    UI component which do not change over a time ie In simple words, Stateless widgets cannot change their state during the runtime of the app,
    which means the widgets cannot be redrawn while the app is in action.It can be change after running that is
    while coding

    and it does not store previous state info


    Whereas a Stateful is totally opposite of it.
     */

    // MaterialApp(
    //   home: Scaffold(
    //     backgroundColor: Colors.teal,
    //     body: Container(),
    //   ),
    // ),
  //);
}
//Now to make our hot reload work we will use state less widget and put our code of Material app
//in it to overrider its build function everytime we change something

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override//this will override the current state
  //Widget build will target those component of flutter UI which are changed and
  //Will update them
  Widget build(BuildContext context) {
    return  MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.teal,

            //body: Container(color:Colors.white),//this container has no child so

            //so it will occupy as much space as it can

            //so lets give it a text child

          //  body: Container(color:Colors.white,child: Text("Hello")),

            //container with children size themselves to their children that is
            //the width , height and constraint
            //Now the only problem with above line of code is it generates a
            //a text box in corner of the screen pushing some word out of screen
            //to prevent that we can put our container code in SafeArea widget
            //which keeps our code away from screen notch,corner and interactive area


          //  body:SafeArea(child: Container(color:Colors.white,child: Text("Hello")),)


              //we can also provide constraint like height and width in Container


              // body:SafeArea(child: Container(color:Colors.white,child: Text("Hello"),height: 100.0,width: 100.0,),)


            //We can also add Margin using margin property to shift container away from
            //Edge using Syntax:
            //         margin:EdgeInsets.symmetric(vertical:x ,horizontal: y)//will provide margin top+bottom(vertical) and right+left(horizontal)
            //   or
            //         margin:EdgeInsets.all(value)//will provide margin top,right,left and bottom
            // and
            //         margin:EdgeInsets.fromLTRB(leftValue,topValue,rightValue,bottomValue)

           // body:SafeArea(child: Container(color:Colors.white,child: Text("Hello"),height: 100.0,width: 100.0, margin: EdgeInsets.symmetric(vertical:40,horizontal: 20)),)


              //but a container can store only one child But what if we need to create a multi child
              //container for that we use column and row

             // body:SafeArea(child:Column(children:[ Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),Container(width:100.0,height:100.0,color:Colors.red,child:Text("Container 2")),Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 2"))],))


              //Now we have 3 container stack on each other vertically using column but by default our column will try to take up maximum vertical space as possible
            //and limit its horizontal space to width of children element.

            //We can change it by a property of Column widget that is

            //mainAxisSize:MainAxisSize.<min/max>;

          /*    body:SafeArea(child:Column(mainAxisSize: MainAxisSize.min,children:[
                Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),
                Container(width:100.0,height:100.0,color:Colors.red,child:Text("Container 2")),
                Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 2")),
              ],
              ),
              )
*/
            //We can even change its vertical direction for default it's vertical direction is down ie up to down
            //we can change verticalDirection of Column to bottom to up

            //by

            //verticalDirection:VerticalDirection.up;
             /* body:SafeArea(child:Column(verticalDirection: VerticalDirection.down,mainAxisSize: MainAxisSize.min,children:[
                Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),
                Container(width:100.0,height:100.0,color:Colors.red,child:Text("Container 2")),
                Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 3")),
              ],
              ),
              )
            */

            //we can change the spacing b/w conatiner using mainAxisAlignment
            //By default the mainAxisAlignment is set to start that is it
            //will place the children as close to the start of the main axis
            //as possible.
          /*    body:SafeArea(child:Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children:[
                Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),
                Container(width:100.0,height:100.0,color:Colors.red,child:Text("Container 2")),
                Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 3")),
              ],
              ),
              )

          ),
        );

           */
        //We can even align crossAxis which will be horizontal row in this case like this below:


              /*body:SafeArea(child:Column(crossAxisAlignment: CrossAxisAlignment.end,children:[
                Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),
                Container(width:100.0,height:100.0,color:Colors.red,child:Text("Container 2")),
                Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 3")),
              ],
              ),
              )

          ),
    );

               */

        //but if we see clearly nothing actually happens when we set crossAxisAlignment: CrossAxisAlignment.end
        //thats because crossAxisAlignment: CrossAxisAlignment.end align our children with respect to each other
        //so if a child has larger width compare to other child it will align our other child with its end on the other side:

          /*    body:SafeArea(child:Column(crossAxisAlignment: CrossAxisAlignment.end,children:[
                Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),
                Container(width:200.0,height:100.0,color:Colors.red,child:Text("Container 2")),
                Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 3")),
              ],
              ),
              )

          ),
    );

           */

        //But if we want to make our children go to right most we can create a invisible container and then align all
        //other children with repect to it.

          /*    body:SafeArea(child:Column(crossAxisAlignment: CrossAxisAlignment.end,children:[
                Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),
                Container(width:100.0,height:100.0,color:Colors.red,child:Text("Container 2")),
                Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 3")),
                Container(width: double.infinity,height:10.0),
              ],
              ),
              )

          ),
    );

           */
        //We can even stretch our child element by two ways
        //1.giving each child a width of double.infinity
        //2.set crossAxisAlignment:CrossAxisAlignment.stretch
          /*    body:SafeArea(child:Column(crossAxisAlignment: CrossAxisAlignment.stretch,children:[
                Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),
                Container(width:100.0,height:100.0,color:Colors.red,child:Text("Container 2")),
                Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 3")),
              ],
              ),
              )

          ),
    );

           */
        //We can put space b/w child using sizedBox()
          /*    body:SafeArea(child:Column(crossAxisAlignment: CrossAxisAlignment.stretch,children:[
                Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,),
                SizedBox(height: 30.0,),
                Container(width:100.0,height:100.0,color:Colors.red,child:Text("Container 2")),
                SizedBox(height: 30.0,),
                Container(width:100.0,height:100.0,color:Colors.blue,child:Text("Container 3")),
              ],
              ),
              )

          ),
    );*/
    //All these property work on rows also

              body:SafeArea(child:Column(mainAxisAlignment: MainAxisAlignment.center,children:[
                const CircleAvatar(radius:50.0,
                backgroundImage: AssetImage("images/myProfilePic.jpeg"),),
                const Text("Shivansh Kumar",
                style: TextStyle(fontSize: 40.0,color: Colors.white,/*fontWeight: FontWeight.bold,*/fontFamily: "GasoekOne"),),
                const Text("Flutter Developer",
                  style: TextStyle(fontSize: 20.0,color: Colors.white,/*fontWeight: FontWeight.bold,*/fontFamily: "GasoekOne",letterSpacing: 3.5),),
                const SizedBox(height: 20.0,width:150.0,child: Divider(color:Colors.white,thickness: 5.0,),),
                Card(color:Colors.white,margin:EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0 ),
                    child:Padding(padding:EdgeInsets.all(15.0),child:Row(
                      children: [
                        Icon(Icons.phone_android,),
                        SizedBox(width: 10.0,),
                        Text("+918248521034",
                          style:TextStyle(color:Colors.teal.shade900,fontSize: 20.0,fontWeight: FontWeight.bold),)
                  ],
                ),),),
                Card(
                    color:Colors.white,
                    margin:EdgeInsets.symmetric(vertical:10.0,horizontal: 25.0 ),
                    child:Padding(padding:EdgeInsets.all(15.0),child:Row(
                      children: [
                        Icon(Icons.email,),
                        SizedBox(width: 10.0,),
                        Text("shiv760@gmail.com",
                          style:TextStyle(color:Colors.teal.shade900,fontSize: 20.0,fontWeight: FontWeight.bold),)
                      ],
                    )))
              ],
              ),
              )

          ),
    );



  }
}
//container is just like div which is
// a layout box which contains a child like image or text box it is a single child layout
//container with no child occupies as much space as it can
/*
 Container(color:Colors.white,child: Text("Container 1"),height: 100.0,width: 100.0,
              margin: EdgeInsets.symmetric(vertical:40,horizontal: 20),),
 */
