import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/constants/colors.dart';
import 'package:responsive_whatsapp_clone/constants/data.dart';
import 'package:responsive_whatsapp_clone/widgets/divider.dart';
import 'package:responsive_whatsapp_clone/widgets/status_item.dart';

class MobileStatusScreen extends StatelessWidget {
  const MobileStatusScreen({Key? key}) : super(key: key);

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
            StatusItem(
                image: dummyData[0]['image'],
                name: 'My status',
                date: 'tap to add status update',
                imageRadius: size.width * 0.075),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
              child: const Text(
                'Recent updates',
                style: messageStyle,
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => StatusItem(
                    image: dummyData[index]['image'],
                    name: dummyData[index]['name'],
                    date: dummyData[index]['date'],
                    imageRadius: size.width * 0.075),
                separatorBuilder: (context, index) => const DefaultDivider(),
                itemCount: dummyData.length),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
              child: const Text(
                'Viewed updates',
                style: messageStyle,
              ),
            ),
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => StatusItem(
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
