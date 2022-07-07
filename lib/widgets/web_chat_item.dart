import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/data.dart';

import '../constant/colors.dart';

class WebChatsList extends StatelessWidget {
  const WebChatsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height*0.01),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: dummyData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: size.height*0.01),
                  child: ListTile(
                    title: Text(
                      dummyData[index]['name'].toString(),
                      style: textStyle,
                    ),
                    subtitle: Padding(
                      padding:  EdgeInsets.only(top: size.width*0.005),
                      child: Text(
                        dummyData[index]['massage'].toString(),
                        style: messageStyle.copyWith(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        dummyData[index]['image'].toString(),
                      ),
                      radius: size.width*0.02,
                    ),
                    trailing: Text(
                      dummyData[index]['date'].toString(),
                      style: messageStyle,
                    ),
                  ),
                ),
              ),
              const Divider(color: dividerColor, indent: 85),
            ],
          );
        },
      ),
    );
  }
}