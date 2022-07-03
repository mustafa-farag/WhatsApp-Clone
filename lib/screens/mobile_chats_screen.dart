import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/data.dart';
import 'package:responsive_whatsapp_clone/widgets/chat_item.dart';
import 'package:responsive_whatsapp_clone/widgets/divider.dart';

class MobileChatsScreen extends StatelessWidget {
  const MobileChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.all(size.width*0.04),
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) => ChatItem(
              image: dummyData[index]["image"],
              radius: size.width * 0.035,
              name: dummyData[index]['name'],
              massage: dummyData[index]['massage'],
              date: dummyData[index]['date'],
              unRead: dummyData[index]['unRead'],
              imageRadius: size.width * 0.075),
          separatorBuilder: (context, index) => const DefaultDivider(),
          itemCount: dummyData.length),
    );
  }
}
