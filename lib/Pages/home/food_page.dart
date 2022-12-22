import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/Controller/productcontroller.dart';
import 'package:food_delivery_app/widgets/dimensions.dart';
import 'package:food_delivery_app/widgets/Icon_Text.dart';
import 'package:food_delivery_app/widgets/smalltext.dart';
import 'package:get/get.dart';
import '../../widgets/big_text.dart';
class Food_page extends StatefulWidget {

  const Food_page({super.key});

  @override
  State<Food_page> createState() => _Food_pageState();
}

class _Food_pageState extends State<Food_page> {
  PageController pageController= PageController(viewportFraction: 0.85);
  // ignore: prefer_typing_uninitialized_variables
  var _curpage=0.0;
  double scalefactor=0.8;
  var _height=230;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _curpage=pageController.page!;
      });
    });
  }
  @override
  void dispose()
  {
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    //slider section
    return Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GetBuilder<PopularProductController>(builder:(popularProducts){
          return Container(
          //color: Colors.blue,
      margin: EdgeInsets.only(top: 30),
      //color: Color.fromARGB(255, 255, 27, 27),
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: popularProducts.popularProductList.length,
        itemBuilder:(context, index) {
        return _pageItem(index);
        
      },
      ),);
        }),
    //dot section
   GetBuilder<PopularProductController>(builder:(popularProducts){
    return  DotsIndicator(
         dotsCount: popularProducts.popularProductList.isEmpty?1:popularProducts.popularProductList.length,
         position: _curpage,
         decorator: DotsDecorator(
          activeColor: Colors.grey,
         size: const Size.square(9.0),
         activeSize: const Size(18.0, 9.0),
         activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0),),  
      ),
    );
   }),
    SizedBox(height: 15,),
    Container(
      alignment: Alignment.topLeft ,
      margin: EdgeInsets.only(left: 30),
     child: Big_text(text: "Popular  Picks", size: 28,color: Color.fromARGB(251, 85, 85, 85),),
    ),
   ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: ((context, index) {
        return Container(
          margin: EdgeInsets.only(left: 25,right: 15,bottom: 10),
          child: Row(
            children: [
              Container(
                width: 135,
                height: 135,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white60,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/food5.jpg"
                      
                  ),
                 ),
                ),
                  
                ),
                Expanded(child: 
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      // topLeft: Radius.circular(10),
                      // bottomLeft: Radius.circular(10)                      
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(padding: 
                    EdgeInsets.only(left:6,top: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Big_text(text: "Nutritional food Barbeque Bangalore",color: Color.fromARGB(224, 79, 79, 79),),
                        SizedBox(height: 6,),
                        Smalltext(text: "Freshly prepared barbeque",size: 13,),
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
                SizedBox(height: 9,)
                      ]
                    ),
                  ),
                    
                ),
                ),
            ],
          ),
        );
      })),
  ],
    );
  
  }
  Widget _pageItem(int index){
        Matrix4 matrix= new Matrix4.identity();
        if(index==_curpage.floor()){
        var currscale=1-(_curpage-index)*(1-scalefactor);
        var curTransform=_height*(1-currscale)/2;
          matrix=Matrix4.diagonal3Values(1, currscale, 1);
          matrix=Matrix4.diagonal3Values(1,currscale.toDouble(), 1)..setTranslationRaw(0, curTransform, 0);
        }else if(index==_curpage.floor()+1){
          var currscale=scalefactor+(_curpage-index+1)*(1-scalefactor);
          var curTransform=_height*(1-currscale)/2;
          matrix=Matrix4.diagonal3Values(1, currscale, 1);
           matrix=Matrix4.diagonal3Values(1,currscale.toDouble(), 1)..setTranslationRaw(0, curTransform, 0);
        }else if(index==_curpage.floor()-1){
          var currscale=1-(_curpage-index)*(1-scalefactor);
          var curTransform=_height*(1-currscale)/2;
          matrix=Matrix4.diagonal3Values(1, currscale, 1);
           matrix=Matrix4.diagonal3Values(1,currscale.toDouble(), 1)..setTranslationRaw(0, curTransform, 0);
        }else{
          var currscale=0.8;
          matrix=Matrix4.diagonal3Values(1,currscale.toDouble(), 1)..setTranslationRaw(0, _height*(1-currscale)/2, 0);
        }
         
        return 
        Transform(
          transform: matrix,
          child: Stack(
            children: [
              Container(
            height: Dimensions.pageView,
            margin: EdgeInsets.only(left: 10,right: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(35),
            //color:Color(0xFFFED242),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/food1.jpg"
              ))
            ),
          ),
           Align(
            alignment: Alignment.bottomCenter,
            child:Container(
              height: Dimensions.pageTextContainer,
            margin: EdgeInsets.only(left: 45,right: 45,bottom: 12),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
            color:Colors.white,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 138, 121, 93),
                blurRadius: 6,
                offset: Offset(0, 3),
              ),
              BoxShadow(
                color: Colors.white,
                offset: const Offset(-5, 0),
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(5, 0),
              )
            ]
          ),
          child: Container(
            padding: EdgeInsets.only(left: 15,right: 15,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Big_text(text: "Parantha House",color: Color.fromARGB(255, 0, 0, 0),size: 25,),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(5, (index) => Icon(Icons.star,color: Colors.redAccent,size: 18,),),
                    ),
                    SizedBox(width: 7,),
                    Smalltext(text: '4.5',size: 15,),
                    SizedBox(width: 20,),
                    Smalltext(text: '1287  comments',size: 15,),
        
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon_Text(icon: Icons.verified_outlined, text: 'Verified' , iconcolor: Colors.blue),
                    SizedBox(width: 15,),
                     Icon_Text(icon: Icons.location_on, text: '2 k.m' , iconcolor: Colors.redAccent),
                     SizedBox(width: 15,),
                      Icon_Text(icon: Icons.access_time_rounded, text: '20 min' , iconcolor: Colors.greenAccent),
                  ],
                ),
              ],
            ),),
          ),
          ),
              ],));

      }
  }
