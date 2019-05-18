import 'package:bite_club/dataModel/Event.dart';
import 'package:bite_club/network/NetworkRequest.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'ListViewEvent.dart';


class EventPage extends StatelessWidget {
  final Color color;

  EventPage(this.color);

  final events = FutureBuilder<List<Event>>(
    future: NetworkRequest(http.Client()).fetchEvent(),
    builder: (context, result) {
      if (result.hasError) print(result.error);
      return result.hasData
          ? ListViewEvent(eventList: result.data)
          : Center(child: CircularProgressIndicator());
    },
  );

  @override
  Widget build(BuildContext context) {
    return events;
  }
}
