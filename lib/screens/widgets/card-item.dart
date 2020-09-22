import 'package:flutter/material.dart';

// enum CardType { Chapter, Schedule }

class CardItem extends StatelessWidget {
  final Widget leading;
  final String title;
  // final CardType cardType;
  const CardItem({@required this.leading, @required this.title});

  @override
  Widget build(BuildContext context) {
    // final AdManager _adManager = AdManager();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(
        8.0,
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: leading,
            title: Text(title),
          ),
        ),
      ),
    );
  }
}
