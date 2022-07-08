import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constants/colors.dart';

class MessageCard extends StatelessWidget {
  final String message;
  final String date;
  final bool isMe;

  const MessageCard(
      {Key? key, required this.message, required this.date, required this.isMe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: isMe == false ? Alignment.centerLeft : Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: isMe == false ? webAppBarColor : messageColor,
          margin:
              EdgeInsets.symmetric(horizontal: size.width * 0.07, vertical: 5),
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
                child: Row(
                  children: [
                    Text(date, style: messageStyle),
                    if (isMe == true)
                      const SizedBox(
                        width: 5,
                      ),
                    if (isMe == true)
                      const Icon(
                        Icons.done_all,
                        color: Colors.grey,
                        size: 16,
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
