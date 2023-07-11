import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/helper/circularprogressindicator.dart';
import 'package:whatsapp_clone/riverpod/chats_view_riverpod.dart';

class CallsView extends ConsumerWidget {
  const CallsView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final field = ref.watch(reqresApiProvider);
    return field.when(
      data: (data) {
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: data!.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${data[index].firstName}'),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${data[index].avatar}'),
              ),
              trailing: const Icon(Icons.videocam,color: Colors.green),
            );
          },
        );
      },
      error: (error, stackTrace) => const Text('ERROR'),
      loading: () => const Circularprogressindicator(),
    );
  }
}
