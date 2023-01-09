import 'package:flutter/material.dart';

class TampilanWidget extends StatelessWidget {
  final String teks;
  const TampilanWidget({super.key, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        teks,
        style: const TextStyle(color: Colors.black, fontSize: 20),
      ),
    );
  }
}
