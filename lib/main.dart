import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/currentPage.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/massage.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  final screen = [
    CallPage(),
    Massage(),
    HomePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset("assets/mim01.png"),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                color: Colors.blue,
              ),
              child: Icon(Icons.search),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                image: DecorationImage(
                  image: AssetImage('assets/MIM.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/j.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/lp.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/pj.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      image: DecorationImage(
                        image: AssetImage('assets/p.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
          Container(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text(''),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                image: DecorationImage(
                  image: AssetImage('assets/MIM.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              'Messages',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) {
                return HomePage();
              }));
            },
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              ' inquiry',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (cnx) {
                  return HomePage();
                }),
              );
              print('saved message');
            },
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              'My QR',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                CupertinoPageRoute(builder: (cnx) {
                  return HomePage();
                }),
              );
              print('saved message');
            },
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              'Mini Statetment',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              print('saved message');
            },
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              'Services charges',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              print('saved message');
            },
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              'groups',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              print('saved message');
            },
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              'about us',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              print('saved message');
            },
          ),
          ListTile(
            leading: Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: Colors.blue,
                ),
                child: Icon(Icons.menu),
              ),
            ),
            title: Text(
              'log out',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            onTap: () {
              print('saved message');
            },
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.white,
          unselectedFontSize: 15,
          selectedItemColor: Colors.pink,
          selectedFontSize: 25,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.blue,
          currentIndex: currentIndex,
          onTap: (index) => setState(
                () => currentIndex = (index),
              ),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail),
              label: 'contact-page',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'contact-page',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'contact-page',
            ),
          ]),
    );
  }
}
