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
                margin: EdgeInsets.only(top: 80),
                height: 250,
                width: 200,
               decoration: BoxDecoration(color: Colors.blueAccent,image: DecorationImage(image: AssetImage("assets/Part-3B.jpg"))),
              ),
            ),
            SizedBox(height: 20,),
            Center(child: Text("Search Your Location",style: TextStyle(fontSize: 30,color: Colors.grey[700]),),)
          ],),
          Text('Screen-2'),
          Text('Screen-3'),
          Text('Screen-4'),
        ],
      ),

    );
  }
}
