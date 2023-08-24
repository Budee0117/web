import 'package:flutter/material.dart';
import 'package:myflutter/pages/SideBar.dart';
import 'package:myflutter/pages/dashboard_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: SideBar(
              storedEmail: '',
              title: '',
              ),
            ),
            Expanded(child: DashBoardScreen()),
            
          ],
        ),
      ),
    );
  }
}
