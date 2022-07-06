import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/chat_messages.dart';
import 'package:responsive_whatsapp_clone/constant/colors.dart';
import 'package:responsive_whatsapp_clone/widgets/massage_item.dart';

class MobileChatDetailsScreen extends StatelessWidget {
  final String imageUrl;
  final String name;

  const MobileChatDetailsScreen(
      {Key? key, required this.imageUrl, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: size.width * 0.05,
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(
              width: size.width * 0.015,
            ),
            Text(
              name,
              style: textStyle,
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.07),
            child: const Icon(Icons.videocam),
          ),
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.07),
            child: const Icon(Icons.call),
          ),
          Padding(
            padding: EdgeInsets.only(right: size.width * 0.015),
            child: const Icon(Icons.more_vert),
          ),
        ],
        leadingWidth: size.width * 0.05,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) => MassageItem(
                  massage: chats[index]['isMe'] == true
                      ? chats[index]['me']
                      : chats[index]['him'],
                  isMe: chats[index]['isMe']),
              itemCount: chats.length,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: size.height * 0.09,
            child: Padding(
              padding: EdgeInsets.all(size.width * 0.02),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * 0.8,
                    height: size.height * 0.09,
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.emoji_emotions,
                            color: Colors.grey,
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children:  [
                              const Icon(
                                Icons.attach_file,
                                color: Colors.grey,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: size.width*0.03),
                                child: const Icon(
                                  Icons.camera_alt,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          hintText: 'Message',
                          hintStyle: textStyle.copyWith(color: Colors.grey),
                          filled: true,
                          fillColor: appBarColor,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 0, horizontal: size.width * 0.03),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.circular(size.width * 0.2),
                          )),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(bottom: size.height*0.011),
                    child: CircleAvatar(
                      radius: size.width*0.07,
                        child: const Icon(
                          Icons.mic,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
