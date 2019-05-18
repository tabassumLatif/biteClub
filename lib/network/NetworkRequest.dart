import 'dart:async';

import 'package:bite_club/dataModel/Chat.dart';
import 'package:http/http.dart' as http;

class NetworkRequest {
  final http.Client client;

  NetworkRequest(this.client);

  Future<List<Chat>> fetchChats() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts');
    print(response.body);
    return new Future.value(getLocal());
//    return compute(parsePosts, response.body);
  }

  List<Chat> getLocal() {
    List<Chat> list = List<Chat>();
    for (int i = 0; i < 10; i++) {
      list.add(new Chat(1, 1, "title ", "description "));
    }
    return list;
  }

  List<Chat> parsePosts(String responseBody) {
    print(responseBody);
//    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
//    return parsed.map<Chat>((json) => Chat.fromJson(json)).toList();
    return getLocal();
  }
}
