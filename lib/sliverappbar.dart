// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:project/imagewidget.dart';

class SliverAppBarLat extends StatelessWidget {
  const SliverAppBarLat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey,
            expandedHeight: 200,
            leading: InkWell(
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onTap: () => print('kembali'),
            ),
            // title: Text(
            //   'SliverAppBar',
            //   style: TextStyle(color: Colors.white),
            // ),
            actions: [
              IconButton(
                onPressed: () => print('search'),
                icon: Icon(Icons.search),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () => print('exit'),
                icon: Icon(Icons.exit_to_app),
                color: Colors.white,
              ),
            ],
            floating:
                true, //agar saat di scroll keatas kemabali muncul perlahan
            pinned: true, // agar saat di scroll kebawah tidak hilang
            // flexibleSpace: Container(
            //   decoration: BoxDecoration(
            //       image: DecorationImage(
            //           image: NetworkImage(
            //               'https://source.unsplash.com/random?monochromatic+dark'),
            //           fit: BoxFit.cover)),
            // ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://source.unsplash.com/random?monochromatic+dark',
                fit: BoxFit.cover,
              ),
              title: Text(
                'SliverAppBar',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          buildImages(),
        ],
      ),
    );
  }

  Widget buildImages() {
    return SliverToBoxAdapter(
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) => ImageWidgetLat(index: index),
        itemCount: 19,
        primary: false,
        shrinkWrap: true,
      ),
    );
  }
}
