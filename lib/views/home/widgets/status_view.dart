import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('My status'),
      subtitle: Text('Tap to add status update'),
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/photo/icon.png'),
      ),
    );
  }
}
