import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  final String title;

  NewPage({
    Key key,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var receivedData = ModalRoute.of(context).settings.arguments;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('new page'),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text('$title'),
            new Text('this is received data=$receivedData'),
            RaisedButton(
              color: Colors.grey,
              onPressed: () => Navigator.pop(context, '返回值=1111'),
              child: Text('返回'),
            ),
            new Image(
                width: 150,
                height: 150,
                image: new AssetImage('assets/ic_smart_control_except.gif'))
          ],
        ),
      ),
    );
  }
}
