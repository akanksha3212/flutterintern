import 'package:flutter/material.dart';
import 'package:flutter_intern/activity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedPageIndex = 0;
  ThemeData themeConst;
  Future _getAllProducts;

  // Change the index
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }
  Widget _getCurrentPage() {
    switch (_selectedPageIndex) {
      case 0:
        return activity();
      case 1:
        return activity();
    // case 2:
    //  return UserProductScreen();
      case 2:
        return activity();
      default:
        return activity();
    }
  }
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),

  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QUIZ APP"),
      ),
      body:FutureBuilder(

      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      return snapshot.connectionState == ConnectionState.waiting
      ? Center(
      child: CircularProgressIndicator(),
      )
          : _getCurrentPage();
      },
      ),
      bottomNavigationBar: BottomNavigationBar(
      elevation: 20,
      currentIndex: _selectedPageIndex,

      type: BottomNavigationBarType.fixed,
      unselectedItemColor: Color(0xFF727C8E),
      onTap: (index) => _selectPage(index),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Commuity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profile',
          ),
        ],





      ),
    );
  }
}
