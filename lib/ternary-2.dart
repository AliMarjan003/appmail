import 'package:flutter/material.dart';

class Ternary2 extends StatefulWidget {
  const Ternary2({super.key});

  @override
  State<Ternary2> createState() => _Ternary2State();
}

class _Ternary2State extends State<Ternary2> {
  int select=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                select=1;
                setState(() {

                });
              },
              child: Container(
                height: 100,
                width: 200,
                color:select==1?Colors.grey:Colors.cyanAccent,
                child: Center(child: Text(select==0?'No button select':select==1?'Button 1 selected':'')),
              ),
            ),
            InkWell(
              onTap: (){
                select=2;
                setState(() {

                });
              },
              child: Container(
                height: 100,
                width: 200,
                color: select==2?Colors.red:Colors.blue,
                child: Center(child: Text(select==0?'No button selected':select==2?'Button 2 Selected':''),),
              ),
            ),
            InkWell(
              onTap: (){
                select=3;
                setState(() {

                });
              },
              child: Container(
                height: 100,
                width: 200,
                color: select==3?Colors.cyan:Colors.yellow,
                child: Center(child: Text(select==0?'No button selected':select==3?'Button 3 selected':''),),
              ),
            )
          ],
        ),
      ),
    );
  }
}