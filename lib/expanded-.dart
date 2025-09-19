import 'package:flutter/material.dart';


class ExpadedClass extends StatefulWidget {
  const ExpadedClass({super.key});

  @override
  State<ExpadedClass> createState() => _ExpadedClassState();
}

class _ExpadedClassState extends State<ExpadedClass> {
  int select=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 90,
            child:
            select==1?
            Container(//----decorate for chhats
          width: double.infinity,
          color: Colors.yellow,
            )
        :select==2?  Container(// use for stories
              width: double.infinity,
              color: Colors.green,

            ):
                select==3?Container():
                    select==4?Container():SizedBox()
        ),
        Expanded(flex:10,child: Container(color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
              select=1;
              setState(() {

              });
            }, icon: Icon(Icons.chat),),
            IconButton(onPressed: (){
              select=2;
              setState(() {

              });
            }, icon: Icon(Icons.network_locked_sharp),),
            IconButton(onPressed: (){
              select=3;
              setState(() {

              });
            }, icon: Icon(Icons.phone),),
            IconButton(onPressed: (){
              select=4;
              setState(() {

              });
            }, icon: Icon(Icons.group),),
          ],
        ),
        )),
      ],)
    );
  }
}
