import 'package:flutter/material.dart';


//------ewusable text widget
// widget definiiton

//---pera metrize widget
class LoginTextWidget extends StatelessWidget {
  String text;
   LoginTextWidget({super.key, required this.text} );

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.blueAccent,fontSize: 22),);
  }
}
