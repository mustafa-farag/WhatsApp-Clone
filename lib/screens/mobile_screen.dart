import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/screens/mobile_chats_screen.dart';
import 'package:responsive_whatsapp_clone/screens/status_screen.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int currentIndex = 0;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'whatsApp',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          actions: [
            const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            SizedBox(
              width: size.width * 0.05,
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.01),
              child: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom:  TabBar(
            onTap: (index){
              setState((){
                currentIndex == index;
              });
            },
            tabs: const [
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ],
            indicatorWeight: 2,
          ),
        ),
        body: TabBarView(children: [
          const MobileChatsScreen(),
          const MobileStatusScreen(),
          Container(),
        ]),
        floatingActionButton:FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.sms),
        ),
      ),
    );
  }
}
