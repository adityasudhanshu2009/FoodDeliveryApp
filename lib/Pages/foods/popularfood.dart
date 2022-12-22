import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/widgets/appIcon.dart';
import 'package:food_delivery_app/widgets/appcolumn.dart';
import 'package:food_delivery_app/widgets/expandabletext.dart';

import '../../widgets/Icon_Text.dart';
import '../../widgets/big_text.dart';
import '../../widgets/smalltext.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 0,right: 0,
            child: Container(
             width: double.maxFinite,
             height:  400,
             decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                "assets/images/food7.jpg"))
             ), 
            )       

          ),
          Positioned(
            top:50,left: 20,right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios_new_outlined),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            )
            ),
            Positioned(
              left: 0,right: 0,top: 380,
              child: Container(
                padding: EdgeInsets.only(left: 20,right: 20,top: 20),
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  )
                 ),
                  child:Column(
                    children: [
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Big_text(text: "Nutritional food Barbeque",color: Color.fromARGB(223, 67, 66, 66),size: 28,),
                        SizedBox(height: 6,),
                        Smalltext(text: "Freshly prepared barbeque",size: 15,),
                        SizedBox(height: 15,),
                        Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon_Text(icon: Icons.verified_outlined, text: 'Verified' , iconcolor: Colors.blue),
                    SizedBox(width: 15,),
                     Icon_Text(icon: Icons.location_on, text: '2 k.m' , iconcolor: Colors.redAccent),
                     SizedBox(width: 15,),
                      Icon_Text(icon: Icons.access_time_rounded, text: '20 min' , iconcolor: Colors.greenAccent),
                  ],  
                ),
                SizedBox(height: 35,),
                Big_text(text: "Introduction",color: Color.fromARGB(255, 91, 91, 91),size: 25,),
                SizedBox(height: 10,),
                Expandabletext(text: "Barbecue or barbeque (informally BBQ in the UK, US, and Canada, barbie in Australia and braai in South Africa) is a term used with significant regional and national variations to describe various cooking methods that use live fire and smoke to cook the food.[1] The term is also generally applied to the devices associated with those methods, the broader cuisines that these methods produce, and the meals or gatherings at which this style of food is cooked and served. The cooking methods associated with barbecuing vary significantly but most involve outdoor cooking.")
                      ]
                    ),
                    ],
                  )
              ),
              )

        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        padding: EdgeInsets.only(top: 20,right: 20,bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:Color.fromARGB(255, 230, 242, 236),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10),
              margin: EdgeInsets.only(left: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.remove,color: Colors.black,),
                  SizedBox(width: 10,),
                  Text("0", style: TextStyle(fontSize: 30),),
                  SizedBox(width: 10,),
                  Icon(Icons.add,color: Colors.black,)
                ],
              ),
              
            ),
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Smalltext(text: "₹250 | Add to Cart",color: Colors.white,size: 20,),
              padding: EdgeInsets.only(top: 15,bottom: 18,right: 18,left: 18),
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(15)
              ),
            )
          ],
        ),
      ),
    );
  }
}