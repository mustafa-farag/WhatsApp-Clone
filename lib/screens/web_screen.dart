import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/colors.dart';
import 'package:responsive_whatsapp_clone/widgets/chat_list.dart';
import 'package:responsive_whatsapp_clone/widgets/web_chats_appbar.dart';
import 'package:responsive_whatsapp_clone/widgets/web_contacts_appbar.dart';
import 'package:responsive_whatsapp_clone/widgets/web_chat_item.dart';

import '../widgets/web_search_bar.dart';
import '../widgets/web_sending_massage_bar.dart';

class Web extends StatelessWidget {
  const Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: webBackgroundColor,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  WebContactsAppBar(),
                  WebSearchBar(),
                  WebChatsList(),
                ],
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.70,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/backgroundImage.png',
                    )),
              ),
              child: Column(
                children: const [
                  WebChatsAppBar(),
                  ChatList(),
                  WebSendingMassageBar(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
