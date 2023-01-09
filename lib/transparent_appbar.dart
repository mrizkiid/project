// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TransparentAppbar extends StatelessWidget {
  const TransparentAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Transparent app bar'),
        backgroundColor: Colors.white.withOpacity(0.25),
        leading: Icon(Icons.add),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
        ),
      ),
      body: Image.network(
        'https://images.unsplash.com/photo-1568122506084-57d12d22b683?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTIlMjB3YWxscGFwZXJ8ZW58MHx8MHx8&w=1000&q=80',
        height: double.infinity,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
