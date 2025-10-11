import 'package:flutter/material.dart';


class LoginButton extends StatelessWidget {
  String text;
   LoginButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){},
    child: Container(height: 44,
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 18),
    decoration: BoxDecoration(
    color: Colors.orangeAccent,
    borderRadius: BorderRadius.circular(15)
    ),
    child: Center(child: Text(text,style: TextStyle(color: Colors.white),),)));
  }
}
