import 'package:flutter/material.dart';

class Setting extends StatefulWidget
{
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Setting",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body:
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
        child: Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child:
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.accessibility),
              ),
              ListTile(
                leading: Icon(Icons.brightness_low),
              ),
              // Row(
              //   children: [
              //     SizedBox(height: 70,),
              //     Icon(Icons.settings,size: 25,color: Colors.white,),
              //     SizedBox(width: 10,),
              //     Text("General",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(height:50,),
              //     Icon(Icons.home,size: 25,color: Colors.white,),
              //     SizedBox(width: 10,),
              //     Text("Home",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(height: 70,),
              //     Icon(Icons.accessibility,size: 25,color: Colors.lightGreen,),
              //     SizedBox(width: 10,),
              //     Text("Accessibility",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20),),
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(height: 50,),
              //     Icon(Icons.wifi,size: 25,color: Colors.blueAccent,),
              //     SizedBox(width: 10,),
              //     Text("Wifi",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),)
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(height: 60,),
              //     Icon(Icons.mobiledata_off,size: 25,color: Colors.green,),
              //     SizedBox(width: 10,),
              //     Text("Data on or off",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
              //   ],
              // ),
              // Row(
              //   children: [
              //     SizedBox(height: 60,),
              //     Icon(Icons.bluetooth,size: 25,color: Colors.blue,),
              //     SizedBox(width: 10,),
              //     Text("Bluetooth",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
              //   ],
              // ),
              // Row(children: [
              //   SizedBox(height: 60,),
              //   Icon(Icons.brightness_low,color: Colors.yellow,),
              //   SizedBox(width: 10,),
              //   Text("Brightness",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
              // ],)
            ],
          ),
        ),
      )
    );
  }
}
