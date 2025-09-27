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
                leading: Icon(Icons.home,color: Colors.white,size: 30,),
                title: Text("Home",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.settings,size: 30,),
                title: Text("Setting",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.accessibility,color: Colors.blue,),
                title: Text("Accessibility",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.wifi,size: 30,color: Colors.blue,),
                title: Text("Wifi",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.mobiledata_off,size: 30,color: Colors.greenAccent,),
                title: Text("Mobile data On or Off",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.bluetooth,size: 30,color: Colors.blue,),
                title: Text("Bluetooth",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              ListTile(
                leading: Icon(Icons.brightness_high,color: Colors.yellow,size: 30,),
                title: Text("Brightness",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20),),
              )
            ],
          ),
        ),
      )
    );
  }
}
