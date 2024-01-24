import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int i=1;
  String images="assets/images/dice.png";
  Random i1=Random();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dice"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:
             Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Container(
                      height: 200,
                      width: 150,
                      margin: const EdgeInsets.all(20),
                      child: Image.asset(images,fit: BoxFit.fill),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                   ElevatedButton(onPressed: () {
                    setState(() {
                      int i=i1.nextInt(6);
                      if(i==1)
                      {
                        images="assets/images/dice.png";
                      }
                      if(i==2)
                      {
                        images="assets/images/dice (1).png";
                      }
                      if(i==3)
                      {
                        images="assets/images/dice (2).png";
                      }
                      if(i==4)
                      {
                        images="assets/images/dice (3).png";
                      }
                      if(i==5)
                      {
                        images="assets/images/dice (4).png";
                      }
                      if(i==6)
                      {
                        images="assets/images/dice (5).png";
                      }
                    }
                    );

                   }, child: const Text("Click Here"))
                 ],
               ),
             ),
            ),
    );
  }
}
