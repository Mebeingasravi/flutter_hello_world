import 'package:flutter/material.dart';
import 'Trade.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final _context = context;{
    return MaterialApp(
      title: 'home',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _appBar(context),
        body: _buildBody(context),
        bottomNavigationBar: _bottomNavigationBar(),
        floatingActionButton: _floatingActionButton(context),
      ),
    );
  }

  Widget _appBar(BuildContext context) {
    final _context = context;
    return AppBar(
      title: Text('Home'),
      actions: <Widget>[
        Container(
          margin: EdgeInsets.all(8.0),
          child: Container(
            child: FlatButton(
              child: Container(
                  child: Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 35,
              )),
              onPressed: () {
                Navigator.push(_context,
                    MaterialPageRoute(builder: (context) => TradePage()));
              },
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(8.0),
          child: Container(
            child: Icon(
              Icons.cloud_upload,
              size: 35,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _container(),
          _card(),
          _container(),
          _add(),
        ],
      ),
    );
  }

  Widget _add() {
    return Container(child: Image.asset('assets/dribbble_shot.gif'));
  }

  List<Widget> _cards() {
    List<Widget> myItems = new List();
    Widget ard = _card();
    List<Widget> cds = new List();
    cds.add(ard);
    cds.add(ard);
    return cds;
  }

  ///First Container that contain store List of _contnr()
  Widget _container() {
    return Container(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            color: Colors.white,
            height: 200.0,
            child: _contnr()));
  }

  ///It shows Small Container that contain Icon and Name widget
  ListView _contnr() {
    return ListView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.all(10),
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
              color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(offset: Offset(0, 0), blurRadius: 10.0)
              ]),
          width: 160.0,
          child: Column(
            children: <Widget>[
              Icon(
                Icons.add_alarm,
                color: Colors.white,
                size: 100,
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Bitcoin',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          //color: Colors.red,
        ),
        Container(
          decoration: new BoxDecoration(
              color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(offset: Offset(0, 0), blurRadius: 10.0)
              ]),
          width: 160.0,
          child: Column(
            children: <Widget>[
              Icon(
                Icons.add_alarm,
                color: Colors.white,
                size: 100,
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Bitcoin',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          //color: Colors.red,
        ),
        Container(
          decoration: new BoxDecoration(
              color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(offset: Offset(0, 0), blurRadius: 10.0)
              ]),
          width: 160.0,
          child: Column(
            children: <Widget>[
              Icon(
                Icons.add_alarm,
                color: Colors.white,
                size: 100,
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                margin: EdgeInsets.all(10),
                child: Text(
                  'Bitcoin',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          //color: Colors.red,
        ),

      ],
    );
  }

  Widget _floatingActionButton(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      tooltip: 'Ask',
      onPressed: () {
        _showToast(context);
      },
    );
  }

  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.image),
          title: new Text('Trade'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text('Rate'),
        ),
      ],
    );
  }

  void _showToast(BuildContext context) {
    print('hi');
    Scaffold.of(context).showSnackBar(SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(
          label: 'UNDO',
          onPressed: Scaffold.of(context).hideCurrentSnackBar,
        )));
  }

  Widget _listTile() {
    return ListView(
      children: <Widget>[
        ListTile(
            title: Text('ListTile Title'),
            leading: Icon(Icons.flight_land),
            subtitle: Text('this is subtitle of ListTile Widget')),
        ListTile(
          leading: Icon(Icons.map),
          title: Text('Map'),
        ),
        ListTile(
          leading: Icon(Icons.photo_album),
          title: Text('Album'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
        ),
      ],
    );
  }

  Widget _card() {
    return Container(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const ListTile(
              leading: Icon(Icons.album),
              title: Text('The Enchanted Nightingale'),
              subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
            ),
            ButtonTheme.bar(
              // make buttons use the appropriate styles for cards
              child: ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('BUY TICKETS'),
                    onPressed: () {/* ... */},
                  ),
                  FlatButton(
                    child: const Text('LISTEN'),
                    onPressed: () {/* ... */},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
