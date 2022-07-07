import 'package:flutter/material.dart';
import '../constant/colors.dart';

class WebSendingMassageBar extends StatelessWidget {
  const WebSendingMassageBar({Key? key}) : super(key: key);

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              const Icon(Icons.emoji_emotions,color: Colors.grey,),
              SizedBox(width: size.width*0.01,),
              const Icon(Icons.attach_file,color: Colors.grey,),
              SizedBox(width: size.width*0.01,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Type a message',
                      hintStyle: textStyle.copyWith(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.1),
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 0, horizontal: size.width * 0.01),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(size.width * 0.005),
                      )),
                ),
              ),
              SizedBox(width: size.width*0.01,),
              const Icon(
                Icons.mic,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
