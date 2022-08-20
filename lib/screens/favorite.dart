import 'package:flutter/material.dart';

import '../components.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:text(text: 'Favorite Screen', fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}