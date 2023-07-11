import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/helper/circularprogressindicator.dart';
import 'package:whatsapp_clone/riverpod/chats_view_riverpod.dart';

class ChatsView extends ConsumerWidget {
  const ChatsView({
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
              subtitle: Text('${data[index].email}',overflow: TextOverflow.ellipsis,),
              leading: CircleAvatar(
                backgroundImage: NetworkImage('${data[index].avatar}'),
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('00:00',style: TextStyle(color: Colors.black54),),
                  const SizedBox(height: 5,),
                  CircleAvatar(backgroundColor: Colors.green,maxRadius: 10,
                    child: Text(
                      '${data[index].id}',
                      style: const TextStyle(color: Colors.white,fontSize: 10),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
      error: (error, stackTrace) => const Text('ERROR'),
      loading: () => const Circularprogressindicator(),
    );
  }
}