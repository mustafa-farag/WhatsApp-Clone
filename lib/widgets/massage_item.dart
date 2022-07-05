import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/colors.dart';

class MassageItem extends StatelessWidget {
  final String massage;
  final bool isMe;
  const MassageItem({Key? key, required this.massage, required this.isMe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width*0.05,vertical: size.width*0.01),
      child: Container(
        padding: EdgeInsets.all(size.width*0.03),
       width: size.width*0.65,
        decoration: BoxDecoration(
          color: isMe == false ? appBarColor : Colors.teal[700],
          borderRadius: BorderRadius.only(
            topLeft: isMe == true? const Radius.circular(20) : Radius.zero ,
            topRight: isMe == false? const Radius.circular(20) : Radius.zero ,
            bottomLeft: const Radius.circular(20),
            bottomRight: const Radius.circular(20),
          )
        ),
        child: Text(massage,style: textStyle,),
      ),
    );
  }
}


