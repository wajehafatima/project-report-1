import 'package:flutter/material.dart';
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text('About Me',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
      centerTitle: true,
      backgroundColor: Color(0xff85c7de),),
      body: Center(child: Container(height: 300,width:300,
      decoration: BoxDecoration(color: Color(0xff85c7de).withOpacity(0.8),
      border: Border.all(color: Colors.grey),
            boxShadow: [BoxShadow(color: Colors.grey,
            spreadRadius: 3,
            blurRadius: 10)],
            borderRadius: BorderRadius.circular(10),
      ),
      child: Center(child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text('  Hi, I am Wajeha fatima, a budding mobile app developer. This Project showcases my learning journey, highlighting challenges overcome and lessons learned during building an application. ',style: TextStyle(fontSize: 18,),),
      ),),

      ),),

    );
  }
}