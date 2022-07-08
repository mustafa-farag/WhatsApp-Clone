import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/widgets/message_card.dart';

import '../constants/chat_messages.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) => MessageCard(
                message: messages[index]['text'],
                date: messages[index]['time'],
                isMe: messages[index]['isMe'],
              )),
    );
  }
}
