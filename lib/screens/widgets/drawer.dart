import 'package:flutter/material.dart';
import 'package:share/share.dart';
import './rate.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share App'),
            onTap: () {
              Share.share(
                  "Get latest guides and tutorials on Among Us game. Download now. https://play.google.com/store/apps/details?id=com.kksofts.amongusguide.");
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Rate Us'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return RateBar();
                  });
            },
          ),
          ListTile(
            leading: Icon(Icons.perm_device_information),
            title: Text('Disclaimer'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Disclaimer'),
                    content: Text(
                        'This is a fan-made app and the app does not own any of the properties like the images, they are taken from different sources like google, bing. Some of the content here like the Rules are taken directly from the Among Us mobile game so that the gamers can see the rules alongside playing the game for better gameplay. This app does not contain and/or support any type of cheating or fraudlent activities. The app contains only the rules, tactics and strategy to play the game. If you find any copyright images or cintent used in the app, kindly respond to us, wee will immediately remove the copyrighted content.'),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Ok'))
                    ],
                  );
                },
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About App'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('About App'),
                    content: Text(
                        'Among Us Guide and Tutorial\n\n KKSofts @ 2020\n\nVersion: 1.0.0 Build: 1'),
                    actions: [
                      FlatButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Ok'))
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    ),
  );
}
