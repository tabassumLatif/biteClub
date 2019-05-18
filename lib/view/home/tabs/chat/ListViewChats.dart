import 'package:bite_club/dataModel/Chat.dart';
import 'package:flutter/material.dart';

import 'ChatListItem.dart';


class ListViewChats extends StatelessWidget {
  final List<Chat> chatList;

  ListViewChats({Key key, this.chatList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: chatList.length,
          padding: const EdgeInsets.all(10.0),
          itemBuilder: (context, position) {
            return Column(
              children:_buildContactList(context)
            );
          }),
    );
  }

  List<ChatListItem> _buildContactList(BuildContext context) {
    return chatList.map((chat) => ChatListItem(chat, context))
        .toList();
  }

}