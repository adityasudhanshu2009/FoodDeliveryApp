import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/widgets/smalltext.dart';

import 'Icon_Text.dart';
import 'big_text.dart';

class Appcolumn extends StatelessWidget {
  final String text;
  const Appcolumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Big_text(text:text,color: Color.fromARGB(224, 79, 79, 79),),
                        SizedBox(height: 6,),
                        Smalltext(text: "Freshly prepared barbeque",size: 13,),
                        SizedBox(height: 15,),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon_Text(icon:Icons.verified_outlined, text: 'Verified' , iconcolor: Colors.blue),
                    SizedBox(width: 15,),
                     Icon_Text(icon:Icons.location_on, text: '2 k.m' , iconcolor: Colors.redAccent),
                     SizedBox(width: 15,),
                      Icon_Text(icon:Icons.access_time_rounded, text: '20 min' , iconcolor: Colors.greenAccent),
                  ],  
                ),
                SizedBox(height: 9,)
                      ]
                    );
  }
}