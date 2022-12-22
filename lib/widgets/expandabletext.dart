import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/widgets/smalltext.dart';

class Expandabletext extends StatefulWidget {
  final String text;
 // final double size1;
  const Expandabletext({super.key, required this.text,});

  @override
  State<Expandabletext> createState() => _ExpandabletextState();
}

class _ExpandabletextState extends State<Expandabletext> {
  late String firsthalf;
  late String secondhalf;
  bool hiddentext=true;
   double textheight=450;

   @override
   void initState()
   {
      super.initState();
      if(widget.text.length>textheight){
        firsthalf=widget.text.substring(0,textheight.toInt());
        secondhalf=widget.text.substring(textheight.toInt()+1,widget.text.length);
      }
      else{
        firsthalf=widget.text;
        secondhalf="";
      }
   }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty?Smalltext(text: firsthalf):Column(
        children: [
          Smalltext(text: hiddentext?(firsthalf+"..."):(firsthalf+secondhalf),size: 20,),
          InkWell(
            onTap: (){
              setState(() {
                hiddentext=!hiddentext;
              });
            },
            child: Row(
              children:[
                Smalltext(text: hiddentext?"Show more":"Show less", color: Colors.redAccent,size: 13,),
                Icon(hiddentext?Icons.arrow_drop_down:Icons.arrow_drop_up,color: Colors.redAccent,)
                ],
            ),
          )
        ],
      )
    );
  }
}