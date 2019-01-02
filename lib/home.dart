import 'package:flutter/material.dart';
import 'Trade.dart';

class HomePage extends StatefulWidget {
  _homePage createState()=> _homePage();
}

class _homePage extends State<HomePage>{
    @override
  Widget build(BuildContext context) {
    //final _context = context;{
    return MaterialApp(
      title: 'home',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => _buildBody(context),
        '/second': (context) => second(),
        // '/dashboard': (context) => DashBoardScreen(),
        // '/login': (context) => LoginScreen(),
      },
      home: Scaffold(
        appBar: _appBar(context),
        body: _buildBody(context),
        bottomNavigationBar: _bottomNavigationBar(),
        floatingActionButton: _floatingActionButton(context),
      ),
    );
  }
  
  Widget second(){
    return MaterialApp(home:Scaffold(),)
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
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    hintText: 'Search',
                    ), 
          ),
          _topMenu(),
          _add(),
          _container(),
          _card(),
          _container(),
          TextField(),
          _container(),
        ],
      ),
    );
  }

  Widget _topMenu() {
    return Container(
      child: Row(
        children: <Widget>[
          Text('Text'),
          Icon(Icons.notifications),
          Icon(Icons.account_circle),
          Text('Abcd'),
          //TextField(decoration: InputDecoration(border: InputBorder.none,hintText: 'Search',),),
        ],
      ),
    );
  }

  Widget _add() {
    return Container(child: Image.asset('assets/dribbble_shot.gif'));
  }

  ///First Container that contain store List of _contnr()
  Widget _container() {
    return Container(
        child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            //color: Colors.white,
            decoration: BoxDecoration(color: Colors.indigo),
            height: 200.0,
            child: _contnr()));
  }

  ///It shows Small Container that contain Icon and Name widget
  ListView _contnr() {
    return ListView(
      scrollDirection: Axis.horizontal,
      //padding: EdgeInsets.all(10),
      children: <Widget>[
        Container(
          decoration: new BoxDecoration(
              //color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(offset: Offset(0, 0), blurRadius: 10.0)
              ]),
          width: 160.0,
          padding: EdgeInsets.only(top: 20),
          margin: EdgeInsets.only(right: 20, left: 20),
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
              //color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(offset: Offset(0, 0), blurRadius: 10.0)
              ]),
          width: 160.0,
          padding: EdgeInsets.only(top: 20),
          margin: EdgeInsets.only(right: 20, left: 20),
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
              //color: Colors.blue,
              boxShadow: <BoxShadow>[
                BoxShadow(offset: Offset(0, 0), blurRadius: 10.0)
              ]),
          width: 160.0,
          padding: EdgeInsets.only(top: 20),
          margin: EdgeInsets.only(right: 20, left: 20),
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
          icon: new Icon(Icons.mail),
          title: new Text('Trade'),
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.person),
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
