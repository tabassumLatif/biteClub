import 'package:bite_club/dataModel/Event.dart';
import 'package:flutter/material.dart';
import 'eventDetail/EventDetailPage.dart';

class ListViewEvent extends StatelessWidget {
  final List<Event> eventList;

  ListViewEvent({Key key, this.eventList}) : super(key: key);

  static final verticalLine = new Container(
    color: Colors.black38,
    width: 0.5,
    height: 35,
  );

  static Expanded getMenu(IconData iconData, String name) {
    return Expanded(
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          name == "Interested" ? verticalLine : new Container(),
          new Expanded(
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Icon(iconData, color: const Color(0xFFF52E2E), size: 15.0),
                new Padding(padding: EdgeInsets.fromLTRB(8, 0, 0, 0)),
                new Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10))
              ],
            ),
          ),
          name == "Interested" ? verticalLine : new Container()
        ],
      ),
    );
  }

  final bottomMenu = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      getMenu(Icons.share, "Share"),
      getMenu(Icons.not_interested, "Interested"),
      getMenu(Icons.done, "Going")
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: eventList.length,
          padding: const EdgeInsets.all(10.0),
          itemBuilder: (context, position) {
            return new GestureDetector(
              onTap: () {
                _onTapItem(context, eventList[position]);
              },
              child: getEventItem(eventList[position]),
            );
          }),
    );
  }

  Card getEventItem(Event event){
   return new Card(
     child: new Container(
       child: new Center(
           child: new Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
             children: <Widget>[
               new Image.asset(
                 'assets/images/sample_event.png',
                 fit: BoxFit.fill,
                 width: double.infinity,
                 height: 100,
               ),
               new Container(
                 padding: EdgeInsets.all(16),
                 child: new Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     new Text(
                       // Read the name field value and set it in the Text widget
                       event.title,
                       // set some style to text
                       style: new TextStyle(
                           fontSize: 16.0, color: Colors.black),
                     ),
                     new Padding(
                         padding: EdgeInsets.fromLTRB(0, 4, 0, 0)),
                     new Text(
                       // Read the name field value and set it in the Text widget
                       "Friday 18 December - 09:00 PM ",
                       // set some style to text
                       style: new TextStyle(
                           fontSize: 12.0, color: Colors.black38),
                     ),
                     new Padding(
                         padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
                     new Row(
                       children: <Widget>[
                         new Icon(Icons.location_on,
                             color: const Color(0xFFF52E2E), size: 13.0),
                         new Padding(
                             padding: EdgeInsets.fromLTRB(4, 0, 0, 0)),
                         new Text(
                           // Read the name field value and set it in the Text widget
                           "Hyatt Regency Dubai Hotel ",
                           // set some style to text
                           style: new TextStyle(
                               fontSize: 12.0, color: Colors.black),
                         )
                       ],
                     )
                   ],
                 ),
               ),
               new Container(
                 width: double.infinity,
                 height: 0.5,
                 color: Colors.black38,
               ),
               bottomMenu
             ],
           )),
     ),
   );
  }

  void _onTapItem(BuildContext context, Event event) {
    Navigator.of(context).push(new MaterialPageRoute(
        builder: (BuildContext context) => new EventDetailPage(event: event,)));
  }
}
