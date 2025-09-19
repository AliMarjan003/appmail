import 'package:flutter/material.dart';

class Ternary extends StatefulWidget {
  const Ternary({super.key});

  @override
  State<Ternary> createState() => _TernaryState();
}

class _TernaryState extends State<Ternary> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: (){
          if(isPressed==false)
            {
              isPressed=true;
              setState(() {

              });
            }
          else
            {
              isPressed=false;
              setState(() {
                
              });
            }
        },
        child: Center(child: Container(
          height: 200,
          width: 200,
          color: isPressed==true?Colors.red:Colors.cyanAccent,
          child: Center(child: Text(isPressed==true?'Button pressed':'please press the button')),
        ),
        ),
      ),
    );
  }
}
