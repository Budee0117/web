import 'package:flutter/material.dart';


class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Screen'),
        leading: IconButton(
          icon: const Icon(
            color: Colors.white, 
            Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.00,
        backgroundColor: Colors.black,
      ),
    );
  }
}
 