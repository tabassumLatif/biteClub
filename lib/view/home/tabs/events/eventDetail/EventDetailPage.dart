import 'package:bite_club/dataModel/Event.dart';
import 'package:flutter/material.dart';

class EventDetailPage extends StatefulWidget {
  Event event;

  EventDetailPage({Key key, @required this.event}) : super(key: key);

  @override
  _EventDetailPageState createState() => new _EventDetailPageState(event);
}

class _EventDetailPageState extends State<EventDetailPage> {
  Event event;

  _EventDetailPageState(this.event);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getEventHeader(this.event),
    );
  }

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

  Expanded getCardItem(String text, double leftMargin, double rightMargin) {
    return new Expanded(
        child: new Card(
            margin: EdgeInsets.fromLTRB(leftMargin, 12, rightMargin, 12),
            child: new Container(
                padding: EdgeInsets.fromLTRB(10, 9, 10, 9),
                child: Text(text,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500)))));
  }

  Container getEventHeader(Event event) {
    return new Container(
      child: new Container(
        child: new Center(
            child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Image.asset(
                  'assets/images/sample_event.png',
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 150,
                ),
                new GestureDetector(
                  child: new Container(
                    padding: EdgeInsets.all(14),
                    child: new Icon(Icons.arrow_back_ios, color: Colors.white),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
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
                    style: new TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                  new Padding(padding: EdgeInsets.fromLTRB(0, 4, 0, 0)),
                  new Text(
                    // Read the name field value and set it in the Text widget
                    "Friday 18 December - 09:00 PM ",
                    // set some style to text
                    style: new TextStyle(fontSize: 12.0, color: Colors.black38),
                  ),
                  new Padding(padding: EdgeInsets.fromLTRB(0, 8, 0, 0)),
                  new Row(
                    children: <Widget>[
                      new Icon(Icons.location_on,
                          color: const Color(0xFFF52E2E), size: 13.0),
                      new Padding(padding: EdgeInsets.fromLTRB(4, 0, 0, 0)),
                      new Text(
                        // Read the name field value and set it in the Text widget
                        "Hyatt Regency Dubai Hotel ",
                        // set some style to text
                        style:
                            new TextStyle(fontSize: 12.0, color: Colors.black),
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
            bottomMenu,
            new Container(
              width: double.infinity,
              height: 0.5,
              color: Colors.black38,
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                getCardItem("219 Going", 16, 8),
                getCardItem("219 Interested", 8, 16)
              ],
            )
          ],
        )),
      ),
    );
  }
}
