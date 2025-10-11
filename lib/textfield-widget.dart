import 'package:flutter/material.dart';


class TextFieldWidget extends StatelessWidget {
  String hintTExt;
  TextEditingController controller;
   TextFieldWidget({super.key, required this.hintTExt, required this.controller});

  @override
  Widget build(BuildContext context) {
    return    Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all()
        ),
        child: TextFormField(controller: controller,
          decoration: InputDecoration(
              hintText: hintTExt,
            border: InputBorder.none
          ),

        ));
  }
}
