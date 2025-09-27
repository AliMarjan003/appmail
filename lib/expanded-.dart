import 'package:flutter/material.dart';


class ExpadedClass extends StatefulWidget {
  const ExpadedClass({super.key});

  @override
  State<ExpadedClass> createState() => _ExpadedClassState();
}

class _ExpadedClassState extends State<ExpadedClass> {
  List<String> Username=["ALi","Abdullah"];
  List<String> Usertext=["Classes start hy","CR tu hum hy"];
  List<String> Lasttime=["2 hours ago","just now"];
  int select=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp",style: TextStyle(color: Colors.green,fontSize: 25,fontWeight: FontWeight.bold),),
      ),

      body: Column(children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 5),
          height: 50,
          decoration: BoxDecoration(
              color: Colors.grey,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 1),
            child: TextFormField(
              decoration: InputDecoration(
                border:InputBorder.none,
                hintText: "Ask Meta AI or Search",
              ),
            ),
          ),

        ),
        Expanded(
            flex: 90,
            child:
            select==1?
           ListView.builder(
             itemCount: Username.length,
             itemBuilder: (context,index){
               return ListTile(
                 leading: CircleAvatar(),
                 title: Text(Username[index]),
                 subtitle: Text(Usertext[index]),
                 trailing: Text(Lasttime[index],style: TextStyle(fontSize: 15),),
               );
             }
           )
        :select==2? ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)
              {
                return Padding(
                  padding: const EdgeInsets.only(right: 10,bottom: 300,top: 10),
                  child: Container(
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar()
                        ],
                      ),
                    ),
                  ),
                );
              },
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
