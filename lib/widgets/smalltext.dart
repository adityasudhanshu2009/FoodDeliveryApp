import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Smalltext extends StatelessWidget {
   Color? color;
   double height;
  final String text;
  double size;
  Smalltext({super.key,this.color=const Color.fromARGB(255, 119, 118, 121), required this.text,
  this.size=10,
  this.height=0,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
        fontSize: size,
        height: height,
      ),
      
    );
  }
}