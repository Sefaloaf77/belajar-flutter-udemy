// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ItemDetailPage extends StatelessWidget {
  const ItemDetailPage({super.key, required this.gambar});

  final String gambar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: 300,
          width: double.infinity,
          child: Image.asset(
            gambar,
            fit: BoxFit.cover,
          )),
    );
  }
}
