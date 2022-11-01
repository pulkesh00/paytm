import 'package:flutter/material.dart';


class SearchBar extends StatefulWidget
{
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => SearchBarState();

}

class SearchBarState extends State <SearchBar>
{
  @override
  Widget build (BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:const TextField(
          decoration:InputDecoration(
              hintText:' Search'),

        ),
      ),
    );
  }
}