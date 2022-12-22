import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color? backgroundcolor;
  final Color? iconColor;
  final double size;
  const AppIcon({super.key,required this.icon,this.backgroundcolor= const Color.fromARGB(255, 209, 209, 209), this.iconColor=const Color.fromARGB(255, 45, 45, 45),this.size=40, });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(size),
        color: backgroundcolor,
      ),
      child: Icon(
        icon,
        color: iconColor,
        size: 23,
      ),

    );
  }
}