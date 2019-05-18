import 'package:bite_club/dataModel/Chat.dart';
import 'package:bite_club/network/NetworkRequest.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'ListViewChats.dart';

class ChatPage extends StatelessWidget {
  final Color color;

  ChatPage(this.color);

  final chats = FutureBuilder<List<Chat>>(
    future: NetworkRequest(http.Client()).fetchChats(),
    builder: (context, result) {
      if (result.hasError) print(result.error);
      return result.hasData
          ? ListViewChats(chatList: result.data)
          : Center(child: CircularProgressIndicator());
    },
  );

  @override
  Widget build(BuildContext context) {
    return chats;
  }
}
