import 'package:appmail/textfield-widget.dart';
import 'package:flutter/material.dart';



class InsertClass extends StatelessWidget {
   InsertClass({super.key});
TextEditingController nameController=TextEditingController();
TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextFieldWidget(hintTExt: 'ENter Your name', controller: nameController),
        TextFieldWidget(hintTExt: 'ENter Your password', controller: passwordController),
        
        //TextFormField(controller: passwordController,),
      ],),
    );
  }
}
