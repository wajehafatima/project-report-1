import 'package:flutter/material.dart';

import 'package:projectrp/controller/constants/appIcons.dart';
import 'package:projectrp/view/homeScreen/about.dart';
import 'package:projectrp/view/homeScreen/challanges.dart';
import 'package:projectrp/view/homeScreen/development.dart';
import 'package:projectrp/view/homeScreen/lessons.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar:AppBar(title: Text('Project Report',style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
      centerTitle: true,
      backgroundColor: Color(0xff85c7de),),

      //drawer
      drawer: (ListView(padding: EdgeInsets.zero,
      children: [DrawerHeader(decoration: BoxDecoration(
        color: Color(0xff85c7de)
      ), child: Text('Menu',style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,color:Colors.white),
      ),
      ),
      ListTile(leading: Icon(Icons.home,color: Colors.white,),
      title: Text('Home',style: TextStyle(color: Colors.white),),
      onTap: (){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Homescreen()));
      },

      ),
      ListTile(leading: Icon(Icons.info,color: Colors.white,),
      title: Text('About',style: TextStyle(color: Colors.white),),
      onTap: (){
         Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => About()),
      );
      },)
      ],)),






body:
  SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.only(left: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center, children:[Container(
        margin:EdgeInsets.only(top: 20),height:  200,width: 200,
          decoration: BoxDecoration(color: Color(0xff85c7de).withOpacity(0.8),
            border: Border.all(color: Colors.grey),
            boxShadow: [BoxShadow(color: Colors.grey,
            spreadRadius: 3,
            blurRadius: 10)],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Appicons.development, height: 100, width: 100),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Development',style: TextStyle(color: Color(0xff0f2743)),),
                onPressed:(){
                   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Development()),
      );
                },
              ),
            ],
          ),
      
       ),
       
       SizedBox(height: 20,),
       Container(height: 200,width: 200, margin:EdgeInsets.only(top: 20),
          decoration: BoxDecoration(color: Color(0xff85c7de),
          boxShadow: [BoxShadow(color: Colors.grey,
            spreadRadius: 3,
            blurRadius: 10)],
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Appicons.challanges, height: 100, width: 100),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('   Challenges ',style: TextStyle(color: Color(0xff0f2743))),
                onPressed:(){

                   Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Challanges()),
      );
                },
              ),
            
            ],  ), ),
            SizedBox(height: 20,),
            Container(
        margin:EdgeInsets.only(top: 20),height:  200,width: 200,
          decoration: BoxDecoration(
            color: Color(0xff85c7de),
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.grey,
            spreadRadius: 3,
            blurRadius: 10)],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Appicons.lessons, height: 100, width: 100),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Lessons',style: TextStyle(color: Color(0xff0f2743))),
                onPressed:(){
                  Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Lessons()),
      );
                },
              ),
            ],
          ),
      
       ),
       ]
        ),
    ),
  ), 
    
    );
  }
}
 
  

      



    
  

