import 'package:flutter/material.dart';
import 'package:food_delivery_app/Pages/home/food_page.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/smalltext.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_page();
}
//height=979.59
//width=440.81

class _Home_page extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    //print("current height is"+MediaQuery.of(context).size.height.toString());
    //print("current width is"+MediaQuery.of(context).size.width.toString());

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 255, 243),
      body: Column(children: [
        Container(
        child: Container(
          margin: EdgeInsets.only(top: 50),
          padding: EdgeInsets.only(left: 15,right: 15),
        child: Row(  
          mainAxisAlignment: MainAxisAlignment.spaceBetween,        
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.house_rounded,size:48,color: Colors.redAccent,),
                SizedBox(width: 6,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Big_text(text: "India" ,size: 25 ,),
                SizedBox(height:0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Smalltext(text: "Bangalore", size: 20,color:Colors.black54 ,),
                    Icon(Icons.arrow_drop_down_rounded),
                    Padding(padding: EdgeInsets.only(top: 0,bottom: 0))
                  ],
                ),
              ],
            ),
          ],

            ),
            Center(
              child: Container(
                width: 44,
                height: 44,
                child: Icon(Icons.search,color: Colors.white,size: 31,),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Color(0xFFFF5252),
                ),
              ),
            ),
          ],
        ),
      ),
      ),
       Expanded(child:
        SingleChildScrollView(
          child:  Food_page(),
        )),

    ],
    ),
    );
  }
}