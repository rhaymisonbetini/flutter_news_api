import 'package:flutter/material.dart';
import 'package:flutter_flutter_news/helper/data.dart';
import 'package:flutter_flutter_news/models/CategoryModel.dart';
import 'package:flutter_flutter_news/widgets/Category.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<CategoryModel> categories = [];
  @override
  void initState() {
    super.initState();
    categories = getCategoryes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Flutter',
              style: TextStyle(color: Colors.blueGrey),
            ),
            Text(
              'News',
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (contex, index) {
                  return Category(
                    imageUrl: categories[index].imageUrl,
                    categoryName: categories[index].categoryName,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
