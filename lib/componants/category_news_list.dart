import 'package:flutter/material.dart';
import 'package:flutter_app/componants/blog_tile.dart';
import 'package:flutter_app/data/BlogData.dart';
import 'package:flutter_app/model/article.dart';

class Category_news extends StatefulWidget {
  String name, url;

  Category_news({this.name, this.url});

  @override
  _Category_newsState createState() =>
      _Category_newsState(name: name, url: url);
}

class _Category_newsState extends State<Category_news> {
  String name, url;

  _Category_newsState({this.name, this.url});

  List<Article> article = List<Article>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews(url);
  }

  getNews(String url) async {
    News news = News();
    await news.getNews(url);
    article = news.list;
    setState(() {
      print("url is $url");
      print("ITEMS ARE LOADED");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        //leading: IconButton(Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
        leading: IconButton(icon:Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),onPressed: () => Navigator.pop(context),),
        automaticallyImplyLeading: true,
        centerTitle: true,
        title:
        Text("$name news",
            style: TextStyle(color: Colors.black, fontSize: 16)),

      ),
      body: Container(
          child: ListView.builder(
        itemCount: article.length,
        itemBuilder: (context, index) {
          return BlogTile(
            title: article[index].title,
            urlimage: article[index].urlToImg,
            description: article[index].description,
            url: article[index].url,
          );
        },
      )),
    );
  }
}
