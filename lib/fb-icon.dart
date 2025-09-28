import 'package:flutter/material.dart';


class FbHomeIocn extends StatefulWidget {
  const FbHomeIocn({super.key});

  @override
  State<FbHomeIocn> createState() => _FbHomeIocnState();
}

class _FbHomeIocnState extends State<FbHomeIocn> {
  int isSelected=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Row(children: [
          Column(
            children: [
              IconButton(onPressed: (){
                isSelected=1;
                setState(() {

                });
              }, icon: Icon(Icons.home_filled,
              color: isSelected==1?Colors.blueAccent:Colors.black,
              )),
            isSelected==1?  Container(
                height: 5,
                width: 10,
                color: Colors.blueAccent,
              ):SizedBox()
            ],
          ),
          Column(
            children: [
              IconButton(onPressed: (){
                isSelected=2;
                setState(() {

                });
              }, icon: Icon(Icons.video_collection,
              color: isSelected==2?Colors.blueAccent:Colors.black,
              )),
            isSelected==2?  Container(
                height: 3,
                width: 20,
                color: Colors.blueAccent,
              ):SizedBox()
            ],
          ),
        ],),
        isSelected==1?Container(
          height: 50,
          width: 50,
          color: Colors.blueAccent,
        ):isSelected==2?Container(
          height: 50,
          width: 50,
          color: Colors.black,
        ):SizedBox()
      ],
      ),
    );
  }
}
