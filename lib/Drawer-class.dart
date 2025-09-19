import 'package:appmail/Setting-screen.dart';
import 'package:flutter/material.dart';

class Drawerclass extends StatefulWidget {
  const Drawerclass({super.key});

  @override
  State<Drawerclass> createState() => _DrawerclassState();
}

class _DrawerclassState extends State<Drawerclass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: Text("Mailapp"),
      ),
      drawer: Drawer(child: Column(
        children: [
          UserAccountsDrawerHeader
            (decoration: BoxDecoration(color: Colors.greenAccent),
              accountName: Text("ALi Marjan"), accountEmail: Text("qwertyuiop@gmail.com",),currentAccountPicture: CircleAvatar(),),
          ListTile(
            onTap: (){
              Navigator.pop(context);
            },
            leading:Icon(Icons.home),
            title: Text("Home"),
            trailing: Icon(Icons.arrow_forward_outlined),
          ),
          ListTile(
            onTap: (){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
            },
            leading: Icon(Icons.settings),
            title: Text("Setting"),
            trailing: Icon(Icons.arrow_forward_outlined),
          ),

        ],
      ),),
    );
  }
}
