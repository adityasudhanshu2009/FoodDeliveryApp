import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/widgets/smalltext.dart';
class Icon_Text extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconcolor;
  const Icon_Text({super.key, 
  required this.icon,
  required this.text, 
  required this.iconcolor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon,color: iconcolor,),
        SizedBox(width: 4,),
        Smalltext(text: text,size: 15,),
      ],
    );
  }
}