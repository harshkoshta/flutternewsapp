import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleView extends StatefulWidget {
  final String url;

  ArticleView({this.url});

  @override
  _ArticleViewState createState() => _ArticleViewState(url);
}

class _ArticleViewState extends State<ArticleView> {
  String url;

  _ArticleViewState(this.url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar:  AppBar(

          backgroundColor: Colors.white38,
          elevation: 0,
          //leading: IconButton(Icon(Icons.arrow_back_ios_rounded,color: Colors.black,)),
          leading: IconButton(iconSize: 20,icon:Icon(Icons.arrow_back_ios_rounded,color: Colors.black,),onPressed: () => Navigator.pop(context),),
          automaticallyImplyLeading: true,


        ),
        body: WebView(
          initialUrl: url,

        ));
  }
}
