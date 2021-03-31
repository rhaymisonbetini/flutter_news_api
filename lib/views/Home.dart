import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_flutter_news/helper/News.dart';
import 'package:flutter_flutter_news/helper/data.dart';
import 'package:flutter_flutter_news/models/ArticleModel.dart';
import 'package:flutter_flutter_news/models/CategoryModel.dart';
import 'package:flutter_flutter_news/widgets/CardNews.dart';
import 'package:flutter_flutter_news/widgets/Category.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<CategoryModel> categories = [];

  List<ArticleModel> articles = [];
  bool _loading = true;

  _getNews() async {
    News news = News();
    await news.getNews();
    articles = news.news;
    print(articles);
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    categories = getCategoryes();
    _getNews();
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              Container(
                height: 70,
                child: ListView.builder(
                  itemCount: categories.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (contex, index) {
                    return Category(
                      imageUrl: categories[index].imageUrl,
                      categoryName: categories[index].categoryName,
                    );
                  },
                ),
              ),
              _loading
                  ? Container(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: articles.length,
                        itemBuilder: (contex, index) {
                          final artic = articles[index];

                          return SingleChildScrollView(
                            child: CardNews(
                              imagUrl: artic.urlToImage,
                              title: artic.title,
                              desc: artic.description,
                            ),
                          );
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
