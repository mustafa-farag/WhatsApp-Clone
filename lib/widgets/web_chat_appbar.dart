import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/colors.dart';

import '../constant/data.dart';

class WebChatsAppBar extends StatelessWidget {
  const WebChatsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.3,
      height: size.height * 0.08,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: appBarColor,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.015),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  dummyData[6]['image'].toString(),
                ),
                radius: size.width * 0.015,
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.015),
              child: const Icon(
                Icons.circle_outlined,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.015),
              child: const Icon(
                Icons.chat,
                color: Colors.grey,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.015),
              child: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
