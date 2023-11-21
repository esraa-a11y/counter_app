import 'package:flutter/material.dart';

void main() {
  runApp( const basketball());

}

class basketball extends StatefulWidget {
  const basketball({super.key});

  @override
  State<basketball> createState() => _basketballState();
}

class _basketballState extends State<basketball> {
  int teamAPoints=0;
  int teamBPoints=0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter', style: TextStyle(
            color: Colors.white,
          ),),
        ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Column(
                 children: [
                   Text('Team A',style: TextStyle(
                     fontSize: 32,
                     color: Colors.grey[800],
                   ),
                   ),
                   Text('$teamAPoints',style: TextStyle(
                     fontSize: 150,

                   ),),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.orange,
                       minimumSize: Size(150, 50),
                     ),
                     child: Text('Add 1 point',style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                     ),),
                     onPressed: () {
                       setState(() {
                         teamAPoints++;

                       });
                     },
                   ),
                   const SizedBox(height: 15,),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.orange,
                       minimumSize: Size(150, 50),
                     ),
                     child: Text('Add 2 point',style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                     ),),
                     onPressed: () {
                       setState(() {
                         teamAPoints=teamAPoints+2;

                       });

                     },
                   ),
                   const SizedBox(height: 15,),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.orange,
                       minimumSize: Size(150, 50),
                     ),
                     child: Text('Add 3 point',style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                     ),),
                     onPressed: () {
                       setState(() {
                         teamAPoints=teamAPoints+3;

                       });
                     },
                   ),

                 ],
               ),
               SizedBox(
                 height: 350,
                 child: VerticalDivider(
                   color: Colors.grey,
                   thickness: 1,

                 ),
               ) ,
               Column(
                 children: [
                   Text('Team B',style: TextStyle(
                     fontSize: 32,
                     color: Colors.grey[800],
                   ),
                   ),
                   Text('$teamBPoints',style: TextStyle(
                     fontSize: 150,

                   ),),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.orange,
                       minimumSize: Size(150, 50),
                     ),
                     child: Text('Add 1 point',style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                     ),),
                     onPressed: () {
                       setState(() {
                         teamBPoints++;

                       });
                     },
                   ),
                    const SizedBox(height: 15,),
                    ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.orange,
                       minimumSize: Size(150, 50),
                     ),
                     child: Text('Add 2 point',style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                     ),),
                     onPressed: () {
                       setState(() {
                         teamBPoints=teamBPoints+2;

                       });
                     },
                   ),
                   const SizedBox(height: 15,),
                   ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.orange,
                       minimumSize: Size(150, 50),
                     ),
                     child: Text('Add 3 point',style: TextStyle(
                       color: Colors.black,
                       fontSize: 15,
                     ),),
                     onPressed: () {
                       setState(() {
                         teamBPoints=teamBPoints+3;

                       });
                     },
                   ),

                 ],
               ),

             ],
           ),
           SizedBox(
             height: 100,
           ),
           ElevatedButton(
             style: ElevatedButton.styleFrom(
               primary: Colors.orange,
               minimumSize: Size(150, 50),
             ),
             child: Text('Reset',style: TextStyle(
               color: Colors.black,
               fontSize: 15,
             ),),
             onPressed: () {
               setState(() {
                 teamAPoints=0;
                 teamBPoints=0;

               });

             },
           ),


         ],
       ),

      ),
    );
  }
}
