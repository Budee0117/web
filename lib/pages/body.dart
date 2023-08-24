import 'package:flutter/material.dart';


class BodyScreen extends StatelessWidget{
  const BodyScreen({super.key, required this.title, required this.storedEmail});
  final String title;
  final String storedEmail;
  
  
  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(
        child:Row(
          children: [
            
          ],
        )
      )
    )
      ;
  }

  
}