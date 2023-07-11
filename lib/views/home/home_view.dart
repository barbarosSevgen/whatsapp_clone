import 'package:flutter/material.dart';
import 'package:whatsapp_clone/views/home/widgets/appbar.dart';
import 'package:whatsapp_clone/views/home/widgets/calls_view.dart';
import 'package:whatsapp_clone/views/home/widgets/chats_view.dart';
import 'package:whatsapp_clone/views/home/widgets/status_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: appBar(),
        body: const TabBarView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            ChatsView(),
            StatusView(),
            CallsView(),
          ],
        ),
        floatingActionButton: const FloatingActionButton(onPressed: null,child: Icon(Icons.chat),),
      ),
    );
  }
}
