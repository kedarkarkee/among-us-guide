import 'package:flutter/material.dart';

class Guide {
  final String name;
  final String imageUrl;
  final List<Content> contents;

  const Guide({
    @required this.name,
    @required this.imageUrl,
    @required this.contents,
  });

  @override
  String toString() {
    return this.name;
  }
}

class Content {
  final String title;
  final String text;
  final String tip;

  const Content({this.title = "", this.text = "", this.tip = ""});
}
