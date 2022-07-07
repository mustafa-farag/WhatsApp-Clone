import 'package:flutter/material.dart';

import '../constant/colors.dart';
import '../constant/data.dart';

class WebChatsAppBar extends StatelessWidget {
  const WebChatsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.7,
      height: size.height * 0.08,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: webAppBarColor,
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
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.01),
              child: Text(dummyData[6]['name'],style: textStyle,),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.015),
              child: const Icon(
                Icons.search,
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
