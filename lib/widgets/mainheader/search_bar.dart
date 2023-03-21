import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Icon(Icons.search, color: Colors.white60, size: 30),
          ),
          hintText: 'Search by title, genre and year',
          hintStyle: TextStyle(color: Colors.white60, fontSize: 20),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20)
        ),
        cursorColor: Colors.white60,
        style: TextStyle(color: Colors.white60, fontSize: 20),
        cursorHeight: 25,
      ),
    );
  }
}