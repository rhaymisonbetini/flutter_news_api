class ArticleModel {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String content;
  String publishedAt;

  ArticleModel(this.author, this.title, this.description, this.url,
      this.urlToImage, this.content, this.publishedAt);

  ArticleModel.fromMap(element) {
    this.author = element["author"];
    this.title = element["title"];
    this.description = element["description"];
    this.url = element["url"];
    this.urlToImage = element["urlToImage"];
    this.content = element["content"];
    this.publishedAt = element["publishedAt"];
  }
}
