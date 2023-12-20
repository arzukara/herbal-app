import 'package:flutter/material.dart';
import 'package:herbal_app/model/products.dart';
import 'package:herbal_app/provider/product.dart';
import 'package:herbal_app/view/widgets/card.dart';
import 'package:provider/provider.dart';

class SearchBarWidget extends StatefulWidget {
  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        onChanged: (value) {
          // Handle search query changes here
          print("Search query: $value");
        },
      ),
    );
  }
}
