// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppbarwithBG extends StatelessWidget {
  const AppbarwithBG({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Appbar with bg"),
          backgroundColor: Colors.grey.shade200,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1568122506084-57d12d22b683?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTIlMjB3YWxscGFwZXJ8ZW58MHx8MHx8&w=1000&q=80',
                  ),
                  fit: BoxFit.cover,
                  opacity: 0.5),
            ),
          )),
    );
  }
}
