import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class Category_tile extends StatelessWidget {
  final name;
  final url;

  Category_tile(this.name, this.url);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(children: [
   CachedNetworkImage(
             imageUrl: url,
fit: BoxFit.cover,
     width: 120,


          ),
          Container(
              alignment: Alignment.center,
              width: 120,
              height: 60,
              child: Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ))
        ]),
      ),
    );
  }
}
