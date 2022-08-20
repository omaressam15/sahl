import 'package:flutter/material.dart';

import '../components.dart';

class BalanceScreen extends StatelessWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:text(text: 'Balance Screen', fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}