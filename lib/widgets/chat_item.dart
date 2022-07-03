import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/colors.dart';

class ChatItem extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final String massage;
  final String unRead;
  final double radius;
  final double imageRadius;

  const ChatItem(
      {Key? key,
      required this.image,
      required this.radius,
      required this.name,
      required this.massage,
      required this.date,
      required this.unRead,
      required this.imageRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(image),
          radius: imageRadius,
        ),
        SizedBox(width: size.width*0.035,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                name,
                style: textStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: size.height*0.01,),
              Text(
                massage,
                style: messageStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text(date,style: messageStyle,),
            SizedBox(height: size.height*0.01,),
            CircleAvatar(
              radius: radius,
              child: Text(unRead),
            ),
          ],
        ),
      ],
    );
  }
}
