import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constant/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.3,
      height: size.height * 0.06,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(color: dividerColor),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: size.height * 0.01, horizontal: size.width * 0.01),
          child: TextField(
            decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 0.01, right: size.width * 0.02),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: size.width * 0.013,
                  ),
                ),
                hintText: 'Search or start new chat',
                hintStyle: textStyle.copyWith(
                  color: Colors.grey,
                  fontSize: 14,
                ),
                filled: true,
                fillColor: webAppBarColor,
                contentPadding: EdgeInsets.symmetric(
                    vertical: 0, horizontal: size.width * 0.03),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(size.width * 0.005),
                )),
          ),
        ),
      ),
    );
  }
}
