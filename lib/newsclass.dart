import 'package:flutter/material.dart';
import 'package:flutter_app/componants/blog_tile.dart';
import 'package:flutter_app/componants/category_news_list.dart';
import 'package:flutter_app/componants/category_tile.dart';
import 'package:flutter_app/data/BlogData.dart';
import 'package:flutter_app/model/article.dart';

import 'data/category_data.dart';
import 'model/category.dart';

class newsclass extends StatefulWidget {
  setState() {}

  @override
  _newsclassState createState() => _newsclassState();
}

class _newsclassState extends State<newsclass> {
  List<Category> list = List<Category>();
  List<Article> article = List<Article>();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    list = getCategories();
    getNews(null);
  }

  getNews(String url) async {
    News news = News();
    await news.getNews(url);
    article = news.list;
    setState(() {
      _loading = false;
      print("ITEMS ARE LOADED");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "NewsApi",
        home: Scaffold(
            backgroundColor: Colors.white,

            appBar: AppBar(

              elevation: 0,
              backgroundColor: Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("India",
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                  Text(" News",
                      style:
                          TextStyle(color: Colors.blue, fontSize: 18,)),

                ],
              ),
            ),
            body: _loading
                ? Center(
                    child: Container(
                      child: CircularProgressIndicator(),
                    ),
                  )
                : Container(
                    child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 60,
                          child: ListView.builder(
                            itemCount: list.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
//                                  child: Category_tile(list[index].name,list[index].url)
                                  //now we are experimenting things
                                  child: GestureDetector(
                                      onTap: () {
                                        String source =
                                            list[index].name.toLowerCase();
                                        String dynamic_url =
                                            "http://newsapi.org/v2/top-headlines?country=in&category=$source&apiKey=404b004c9fcf45809707fb4ee17f95d4";
                                        print("Item $index Tabbed");
//                                        while (list.isNotEmpty)
//                                          list.removeLast();
//                                        print(list);
//                                        // _loading = false;
//                                        getNews(dynamic_url);
//                                        print("Item $index Tabbed at end");
//                                        print(list);
//                                        setState(() {});

                                        //navigator new start here
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Category_news(
                                                name: list[index].name,
                                                    url:dynamic_url,

                                              ),
                                            ));
                                      },
                                      child: Category_tile(
                                          list[index].name, list[index].url))

                                  //ended here
                                  );
                            },
                          ),
                        ),
                      ),
                      Expanded(
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
                        ),
                      )
                    ],
                  ))));
  }
}
