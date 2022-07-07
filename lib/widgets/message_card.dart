import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/colors.dart';

class MessageCard extends StatelessWidget {
  final String message;
  final String date;
  final bool isMe;

  const MessageCard(
      {Key? key, required this.message, required this.date, required this.isMe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe == false ? Alignment.centerLeft : Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: isMe == false ? webAppBarColor : messageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 30,
                  top: 5,
                  bottom: 20,
                ),
                child: Text(
                  message,
                 style: textStyle,
                ),
              ),
              Positioned(
                bottom: 2,
                right: 10,
                child: Text(
                  date,
                  style: messageStyle
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
