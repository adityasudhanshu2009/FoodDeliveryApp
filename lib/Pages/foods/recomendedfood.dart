import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/widgets/appIcon.dart';
import 'package:food_delivery_app/widgets/big_text.dart';
import 'package:food_delivery_app/widgets/smalltext.dart';

import '../../widgets/expandabletext.dart';

class Recomendedfood extends StatelessWidget {
  const Recomendedfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart),
              ]),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(35),
              child: Container(
                child:  Center(child: Big_text(text: 'Biryani',size: 35,color: Color.fromARGB(255, 51, 51, 51),)),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5,bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)
                  )
                ),
                 
                ),
              ),
            pinned: true,
            backgroundColor: Color.fromARGB(255, 255, 236, 254),
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/images/food2.jpg",
              width:double.maxFinite,
              fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Column( 
              children: [
                Container(
                  color: Colors.white,
                  margin: EdgeInsets.only(right: 20,bottom: 20,left: 20,top: 20),
                  child: Expandabletext(text: "The exact origin of the dish is uncertain. In North India, different varieties of biryani developed in the Muslim centres of Delhi (Mughlai cuisine), Rampur, Lucknow (Awadhi cuisine) and other small principalities. In South India, where rice is more widely used as a staple food, several distinct varieties of biryani emerged from Hyderabad Deccan (where some believe the dish originated[11]) as well as Tamil Nadu (Ambur, Thanjavur, Chettinad, Salem, Dindigal), Kerala (Malabar), Telangana, and Karnataka (Bhatkal) where Muslim communities were present.[5][12]According to historian Lizzie Collingham, the modern biryani developed in the royal kitchens of the Mughal Empire (1526–1857) and is a mix of the native spicy rice dishes of India and the Persian pilaf.[13] Indian restaurateur Kris Dhillon believes that the dish originated in Persia, and was brought to India by the Mughals.[14]Another theory claims that the dish was prepared in India before the first Mughal emperor Babur conquered India.[15] The 16th-century Mughal text Ain-i-Akbari makes no distinction between biryanis and pilaf (or pulao): it states that the word biryani is of older usage in India.[16] A similar theory, that biryani came to India with Timur's invasion, appears to be incorrect, because there is no record of biryani having existed in his native land during that period.[15]According to Pratibha Karan, who wrote the book Biryani, biryani is of Mughal origin, derived from pilaf varieties brought to the Indian subcontinent by Arab traders. She speculates that the pulao was an army dish in medieval India. Armies would prepare a one-pot dish of rice with whichever meat was available. Over time, the dish became biryani due to different methods of cooking, with the distinction between pulao and biryani being arbitrary.[5][15]According to Vishwanath Shenoy, the owner of a biryani restaurant chain in India, one branch of biryani comes from the Mughals, while another was brought by the Arab traders to Malabar in South India.[17]"),
                )
              ],
              )
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            color:Colors.white54,
            padding: EdgeInsets.only(
              top: 10,bottom: 10,left: 50,right: 50
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove,backgroundcolor: Color.fromARGB(219, 255, 82, 82),iconColor: Colors.white,),
                Smalltext(text: "₹12.59 "+"X"+" 0",size: 30,color: Color.fromARGB(255, 49, 49, 49),),
                AppIcon(icon: Icons.add,backgroundcolor: Color.fromARGB(216, 255, 82, 82),iconColor: Colors.white,),
              ],
              
            ),
          ),
          Container(
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
              margin: EdgeInsets.only(left: 40),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: 
              Icon(
                Icons.favorite,size: 30,color: Colors.redAccent,
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
        ],
      ),
    );
  }
}