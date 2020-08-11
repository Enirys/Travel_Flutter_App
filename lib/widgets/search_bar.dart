import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Container(
        child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 15.5,
          ),
        ),
        ),
        decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}