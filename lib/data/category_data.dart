import 'package:flutter_app/model/category.dart';

List<Category> getCategories() {
  List<Category> list = List<Category>();

  Category cat = new Category(
      name: "General",
      url:
          "https://images.unsplash.com/photo-1513151233558-d860c5398176?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
  list.add(cat);
  cat = new Category(
      name: "Technology",
      url:
          "https://images.unsplash.com/photo-1483058712412-4245e9b90334?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
  list.add(cat);
  cat = new Category(
      name: "Business",
      url:
          "https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
  list.add(cat);
  cat = new Category(
      name: "Health",
      url:
          "https://images.unsplash.com/photo-1489533119213-66a5cd877091?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1051&q=80");
  list.add(cat);

  cat = new Category(
      name: "Entertainment",
      url:
          "https://images.unsplash.com/photo-1469032923574-4f1413034019?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
  list.add(cat);
  cat = new Category(
      name: "Sports",
      url:
          "https://images.unsplash.com/photo-1461896836934-ffe607ba8211?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
  list.add(cat);
  cat = new Category(
      name: "Science",
      url:
          "https://images.unsplash.com/photo-1529107386315-e1a2ed48a620?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80");
  list.add(cat);

  return list;
}
