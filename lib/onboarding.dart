import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController pageController=PageController();
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Text("Skip"),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.double_arrow),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton:
      index!=3?  InkWell(
        onTap: (){},
        child: Container(
          height: 40,
          margin: EdgeInsets.only(left: 30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text('Next',style: TextStyle(color: Colors.white),),),
        ),
      ):
      InkWell(
        onTap: (){

        },
        child: Container(
          height: 40,
          margin: EdgeInsets.only(left: 30),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Center(child: Text('Get Started',style: TextStyle(color: Colors.white),),),
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (value){
          index=value;
          setState(() {

          });
        },
        children: [
          Column(children:[
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 50),
                height: 220,
                width: 230,
               decoration: BoxDecoration(color: Colors.white,image: DecorationImage(image: AssetImage("assets/Part-3B.jpg"),fit: BoxFit.cover)),
              ),
            ),
            SizedBox(height: 20,),
            Center(child: Text("Search Your Location",style: TextStyle(fontSize: 30,color: Colors.grey[600]),),),
          ],),
          Column(
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  height: 220,
                  width: 230,
                  decoration: BoxDecoration(color: Colors.white,
                  image: DecorationImage(image: AssetImage("assets/Part-3B-1.jpg"),fit: BoxFit.cover)),
                ),
              ),
              SizedBox(height: 20,),
              Center(child: Text("Make A Call",style: TextStyle(fontSize: 30,color: Colors.grey[600]),),)
            ],
          ),
          Column(children: [
            Center(child:
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 220,
              width: 230,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Part-3B-2.jpg"),fit: BoxFit.cover)
                ),
              ),),
            SizedBox(height: 20,),
            Center(child: Text("Add Missing Place",style: TextStyle(fontSize: 30,color: Colors.grey[600]),),)
          ],),
          Column(children: [
            Center(child:
            Container(
              margin: EdgeInsets.only(top: 50),
              height: 220,
              width: 230,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/Part-3B-3.jpg"),fit: BoxFit.cover)
              ),
            ),),
            SizedBox(height: 20,),
            Center(child: Text("Sit Back And Enjoy",style: TextStyle(fontSize: 30,color: Colors.grey[600]),),)
          ],),
        ],
      ),

    );
  }
}