import 'package:bite_club/dataModel/Chat.dart';
import 'package:bite_club/network/NetworkRequest.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'ListViewEvent.dart';


class EventPage extends StatelessWidget {
  final Color color;

  EventPage(this.color);



  final chats = FutureBuilder<List<Chat>>(
    future: NetworkRequest(http.Client()).fetchChats(),
    builder: (context, result) {
      if (result.hasError) print(result.error);
      return result.hasData
          ? ListViewEvent(chatList: result.data)
          : Center(child: CircularProgressIndicator());
    },
  );

  @override
  Widget build(BuildContext context) {
    return chats;
  }
}
