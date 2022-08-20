import 'package:flutter/material.dart';

import '../components.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child:text(text: 'Account Screen', fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}