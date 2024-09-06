import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'color_screen.dart';
import 'component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        backgroundColor : Colors.blue ,
        elevation: 0, // hedha couleur difference mebbin navbar wel body
        title: Center(
            child : Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                        begin: Alignment.bottomRight ,
                        colors: [
                            Colors.white.withOpacity(0.7),
                            Colors.white.withOpacity(0.2),
                        ]
                    )
                  ),
            child : const Text(
                      'Colors App' ,
                      style: TextStyle(
                      color : Colors.black,
                      fontWeight:  FontWeight.bold ,
              ),
            ),
        )
        ),
      ) ,
        body : Container(
          margin: EdgeInsets.all(10),
          child : GridView.count(
              crossAxisCount: 3 ,
            children: colorsList.map((colorItem) => 
                InkWell(
                  onTap: (){
                    Navigator.push(context ,
                        MaterialPageRoute(builder: (context) => ColorScreen(colorItem)));
                  },
                  child: Container(
                                margin: EdgeInsets.only(top: 5 , bottom: 5 , left: 5 , right: 5),
                                decoration: BoxDecoration(
                  color : colorItem,
                  borderRadius : BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(
                      offset : Offset(2,5),
                    color: Colors.grey,
                    blurRadius: 3.0,
                  )],
                                ),
                              ),
                ) ).toList(),
          ),
        ),
    );
  }
}
