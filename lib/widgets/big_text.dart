import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Big_text extends StatelessWidget {
   Color? color;
  final String text;
  double size;
  TextOverflow textOverflow;
  Big_text({super.key,this.color=const Color(0xFFFF5252), required this.text,
  this.textOverflow=TextOverflow.ellipsis,
  this.size=20,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: textOverflow,
      
      style: TextStyle(
        color: color,
        fontFamily: 'Vollkorn',
        fontWeight: FontWeight.w600,
        fontSize: size,
         
      ),
      textAlign: TextAlign.left,
      
    );
  }
}