import 'package:flutter/material.dart';

AppBar appBar() {
    return AppBar(
        title: const Text('WhatsApp'),
        actions: const[
          Icon(Icons.search),
          SizedBox(width: 10,),
          Icon(Icons.more_vert),
        ],
        bottom: const TabBar(
          tabs: <Widget>[
            Tab(
              text: 'Chats',
            ),
            Tab(
              text: 'Status',
            ),
            Tab(
              text: 'Calls',
            ),
          ],
        ),
      );
  }