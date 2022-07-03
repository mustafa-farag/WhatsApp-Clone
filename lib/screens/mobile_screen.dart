import 'package:flutter/material.dart';
import 'package:responsive_whatsapp_clone/screens/mobile_chats_screen.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          bottom: const TabBar(
            tabs: [
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
          Container(),
          Container(),
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.sms),
        ),
      ),
    );
  }
}
