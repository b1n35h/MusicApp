import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';

class AboutPage extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(fontFamily: 'Lacquer', fontSize: 27.0),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'This is the Music Streaming app done as a project of Mobile Application development Course. This app is created using flutter and it uses firebase as its backend. The songs that are stored in firebase cloud storage can be played online.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontFamily: 'ShadowsIntoLight', fontSize: 20.0),
                  ),
                ),
                Text(
                  'Created By:- Binesh Shrestha',
                  style: TextStyle(fontSize: 20, fontFamily: 'DancingScript'),
                ),
                Text(
                  'Roll No:- 1916968',
                  style: TextStyle(fontSize: 20, fontFamily: 'DancingScript'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/me.jpg'),
                  radius: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
