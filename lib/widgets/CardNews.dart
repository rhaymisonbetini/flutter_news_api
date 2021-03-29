import 'package:flutter/material.dart';

class CardNews extends StatefulWidget {
  final String imagUrl, title, desc;
  CardNews({@required this.imagUrl, @required this.title, @required this.desc});

  @override
  _CardNews createState() => _CardNews();
}

class _CardNews extends State<CardNews> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(widget.imagUrl),
          Text(widget.title),
          Text(widget.desc)
        ],
      ),
    );
  }
}
