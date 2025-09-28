import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Column(children:[
            CircleAvatar(),
            Text('Screen-1--Bold text'),
            Text('Screen-1--normal grey color text'),
          ],),
          Text('Screen-2'),
          Text('Screen-3'),
          Text('Screen-4'),
        ],
      ),

    );
  }
}
