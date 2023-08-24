import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header( {super.key, required this.title, required this.storedEmail});
  final String title;
  final String storedEmail;

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            '',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
          const Spacer(flex: 2,),
         Expanded(
          child: TextField(
            style: const TextStyle(color: Colors.black),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                color: Colors.black,
                icon: const Icon(Icons.search),
                onPressed: () {}, 
                ),
              fillColor: Colors.white70,
              filled: true,
              labelText: 'Search',
              labelStyle: const TextStyle(
                color: Colors.black,
    ),
              border: const OutlineInputBorder(
                borderSide: 
                BorderSide.none, borderRadius: BorderRadius.all(Radius.circular(10))
              )
            ),
          )

          ),
          const Spacer(flex: 1,)
      ],
    );
  }
}