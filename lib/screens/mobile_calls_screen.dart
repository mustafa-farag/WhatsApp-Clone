import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constants/data.dart';
import 'package:responsive_whatsapp_clone/widgets/divider.dart';

import '../widgets/calls_item.dart';

class MobileCallsScreen extends StatelessWidget {
  const MobileCallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.width * 0.04),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => CallsItem(
                    image: dummyData[index]['image'],
                    name: dummyData[index]['name'],
                    date: dummyData[index]['date'],
                    imageRadius: size.width * 0.075),
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
