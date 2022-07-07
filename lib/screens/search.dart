import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 8.0),
              child: SearchInputFb1(
                  searchController: _searchController,
                  hintText: 'Search NFTs and Creators'
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchInputFb1 extends StatelessWidget {
  final TextEditingController searchController;
  final String hintText;

  const SearchInputFb1({required this.searchController,required this.hintText, Key? key})
      : super(key: key,);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(12, 26),
            blurRadius: 50,
            spreadRadius: 0,
            color: Colors.grey.withOpacity(.1)),
      ]),
      child: TextField(
        controller: searchController,
        textAlign: TextAlign.center,
        onChanged: (value){},
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          // prefixIcon: Icon(Icons.email),
          prefixIcon:
          const Icon(Icons.search, size: 20, color: Color(0xffa8fe39)),
          filled: true,
          fillColor: Colors.white,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.black.withOpacity(.75)),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
      ),
    );
  }
}