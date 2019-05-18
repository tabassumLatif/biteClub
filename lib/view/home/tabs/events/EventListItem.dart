
import 'package:bite_club/dataModel/Chat.dart';
import 'package:flutter/material.dart';

class EventListItem extends ListTile {
  EventListItem(Chat chat, BuildContext context)
      : super(
      title: Text(chat.title),
      subtitle: Text(chat.body),
      leading: CircleAvatar(child: Text(chat.id.toString())),
      onTap: () {
        _onTapItem(context, chat);
      });

  static void _onTapItem(BuildContext context, Chat chat) {
    Scaffold.of(context).showSnackBar(new SnackBar(
        content: new Text(chat.id.toString() + ' - ' + chat.title)));
  }
}
