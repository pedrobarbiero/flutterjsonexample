import 'package:flutter/material.dart';
import 'package:jsonexample/models/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final json = {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {"lat": "-37.3159", "lng": "81.1496"}
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  };

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var user = User.fromJson(widget.json);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          _label("id", user.id.toString()),
          _label("name", user.name),
          _label("username", user.username),
          _label("email", user.email),
          _label("street", user.address.street),
          _label("suite", user.address.suite),
          _label("city", user.address.city),
          _label("zipcode", user.address.zipcode),
          _label("lat", user.address.geo.lat),
          _label("lng", user.address.geo.lng),
          _label("phone", user.phone),
          _label("website", user.website),
          _label("company", user.company.name),
          _label("catch phrase", user.company.catchPhrase),
          _label("bs", user.company.bs),
        ],
      ),
    );
  }

  Widget _label(String label, String value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Text("$label: "),
            Text(value),
          ],
        ),
      );
}
