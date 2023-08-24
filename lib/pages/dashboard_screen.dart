import 'package:flutter/material.dart';

import 'body.dart';
import 'header.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  get storedEmail => String;

  get title => null;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const Header(storedEmail: '', title: ''),
          BodyScreen(title: title, storedEmail: storedEmail),
          // Expanded(flex: 5, child: Text('adadf'))
        ],
      ),
    )
    );
  }
}