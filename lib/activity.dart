import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intern/size_config.dart';

import 'View.dart';

class activity extends StatefulWidget {
  @override
  _activityState createState() => _activityState();
}

class _activityState extends State<activity> {
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
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    double mHeight = mediaQuery.size.height;
    double mWidth = mediaQuery.size.width;
    return LayoutBuilder(builder: (context, constraints) {
      SizeConfig().init(constraints);
      print(SizeConfig.heightMultiplier);
      print(SizeConfig.widthMultiplier);
      return Scaffold(
          appBar: AppBar(
            title: BottomNavigationBar(
              showUnselectedLabels: true,
              unselectedItemColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.menu),
                  label: 'Menu',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_events),
                  label: 'Compete',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.explore),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.thumb_up_alt),
                  label: 'Feedback',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              //onTap: _onItemTapped,
            ),
          ),
          body: Container(
              padding: EdgeInsets.symmetric(),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("What do you want to do...",style:TextStyle(fontSize:20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //  crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => View2()));
                            },
                            child: Column(children: [
                              Text('Compete now', style: TextStyle(
                                    fontSize: 20, color: Colors.black)),
                              Container(
                               decoration:BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),

                                width: mWidth / 2.5,
                                height: mHeight / 6,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  child: Column(children: [

                                    Icon(Icons.emoji_events,
                                        size: mWidth / 8, color: Colors.white),
                                    Text(
                                      "Challenges for You",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    ),
                                  ]),
                                ),
                              )
                            ])),
                        SizedBox(width: 10),
                        Column(children: [
                          Text('Meet new rappers', style: TextStyle(
                              fontSize: 20, color: Colors.black)),
                          Container(
                            decoration:BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),

                              width: mWidth / 2.5,
                              height: mHeight / 6,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                            child: Column(children: [
                              Icon(
                                Icons.chat_bubble_outline_rounded,size: mWidth / 8, color: Colors.white),

                              Text("Chat with other Rappers",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),)
                            ]),
                          ),
                       )])
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Text('Explore', style: TextStyle(
                              fontSize: 20, color: Colors.black)),
                          Container(
                            decoration:BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),

                              width: mWidth / 2.5,
                              height: mHeight / 6,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                            child: Column(children: [

                              Icon(Icons.tap_and_play_outlined,size: mWidth / 8, color: Colors.white),



                              Text("See Rappers like You",  style: TextStyle(
                                  fontSize: 20, color: Colors.white),),
                            ]),
                          ),
                      )]),
                        SizedBox(width:10),                    Column(children: [
                          Text('Play and learn', style: TextStyle(
                              fontSize: 20, color: Colors.black)),
                          Container(
                            decoration:BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),

                              width: mWidth / 2.5,
                              height: mHeight / 6,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                            child: Column(children: [
                              SizedBox(height: 10,),
                              Icon(Icons.videogame_asset_rounded,size: mWidth / 8, color: Colors.white),
                              Text("Learn in funway", style: TextStyle(
                              fontSize: 20, color: Colors.white)),
                            ]),
                          ),
                       )])
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          Text('Learn Rap', style: TextStyle(
                              fontSize: 20, color: Colors.black)),
                          Container(
                            decoration:BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),

                              width: mWidth / 2.5,
                              height: mHeight / 6,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                            child: Column(children: [
                              SizedBox(height: 10,),
                              Icon(Icons.chrome_reader_mode,size: mWidth / 8, color: Colors.white),


                              Text("Learn Rap ",style: TextStyle(
                                  fontSize: 20, color: Colors.white)),
                            ]),
                          ),
                       )]),
                        SizedBox(width: 10,  ),                    Column(children: [
                          Text('Practise Rap', style: TextStyle(
                              fontSize: 20, color: Colors.black)),
                          Container(
                            decoration:BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(12)),

                              width: mWidth / 2.5,
                              height: mHeight / 6,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                            child: Column(children: [
                              SizedBox(height: 10,),
                              Icon(Icons.fitness_center,size: mWidth / 8, color: Colors.white),

                              Text("Practise Rap ", style: TextStyle(
                                  fontSize: 20, color: Colors.white)),
                            ]),
                          ),
                      ) ])
                      ],
                    ),
                  ])));
    });
  }
}
