import 'package:bite_club/dataModel/Chat.dart';
import 'package:bite_club/network/NetworkRequest.dart';
import 'package:bite_club/view/home/tabs/chat/ListViewChats.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class MorePage extends StatelessWidget {
  final Color color;

  MorePage(this.color);

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
