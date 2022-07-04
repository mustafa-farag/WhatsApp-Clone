import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/colors.dart';

class CallsItem extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final double imageRadius;

  const CallsItem(
      {Key? key,
      required this.image,
      required this.name,
      required this.date,
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
        SizedBox(
          width: size.width * 0.035,
        ),
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
              SizedBox(
                height: size.height * 0.004,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.compare_arrows,
                    color: Colors.red,
                  ),
                  SizedBox(width: size.width*0.02,),
                  Text(
                    date,
                    style: messageStyle,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.teal,
            ))
      ],
    );
  }
}
