import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  final imageUrl, categoryName;
  Category({@required this.imageUrl, @required this.categoryName});

  @override
  _Category createState() => _Category();
}

class _Category extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.network(
            widget.imageUrl,
            width: 120,
            height: 60,
          ),
        ],
      ),
    );
  }
}
