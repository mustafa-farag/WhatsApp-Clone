import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constants/data.dart';
import 'package:responsive_whatsapp_clone/screens/mobile_chat_details_screen.dart';
import 'package:responsive_whatsapp_clone/widgets/chat_item.dart';
import 'package:responsive_whatsapp_clone/widgets/divider.dart';

class MobileChatsScreen extends StatelessWidget {
  const MobileChatsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.04),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MobileChatDetailsScreen(
                                  imageUrl: dummyData[index]["image"],
                                  name: dummyData[index]["name"]))),
                      child: ChatItem(
                          image: dummyData[index]["image"],
                          radius: size.width * 0.035,
                          name: dummyData[index]['name'],
                          massage: dummyData[index]['massage'],
                          date: dummyData[index]['date'],
                          unRead: dummyData[index]['unRead'],
                          imageRadius: size.width * 0.075),
                    ),
                separatorBuilder: (context, index) => const DefaultDivider(),
                itemCount: dummyData.length),
            SizedBox(
              height: size.height * 0.1,
            )
          ],
        ),
      ),
    );
  }
}
