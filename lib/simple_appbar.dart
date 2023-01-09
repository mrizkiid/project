// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:project/tampilanwidget.dart';

class SimpleAppBar extends StatelessWidget {
  const SimpleAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('AppBar'),
          centerTitle: true,
          leading: Icon(Icons.add),
          actions: [
            IconButton(
                onPressed: () {
                  print('search');
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print('exit');
                },
                icon: Icon(Icons.exit_to_app))
          ],
          elevation: 10,
          backgroundColor: Colors.amber.shade400,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.star),
                  text: 'feed',
                ),
                Tab(
                  icon: Icon(Icons.face),
                  text: 'Profile',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'Settings',
                ),
              ]),
        ),
        body: TabBarView(children: [
          TampilanWidget(teks: 'HOME PAGE'),
          TampilanWidget(teks: 'FEED PAGE'),
          TampilanWidget(teks: 'PROFILE PAGE'),
          TampilanWidget(teks: 'EXIT PAGE'),
        ]),
      ),
    );
  }
}
