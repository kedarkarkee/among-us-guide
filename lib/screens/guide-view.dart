import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';
import '../utils/ad.dart';
import '../model/guide.dart';
import 'widgets/card-text.dart';

class GuideView extends StatefulWidget {
  GuideView({Key key, this.guide}) : super(key: key);
  final Guide guide;

  @override
  _GuideViewState createState() => _GuideViewState();
}

class _GuideViewState extends State<GuideView> {
  final _nativeAdController = NativeAdmobController();

  StreamSubscription _subscription;
  double _height = 0.0;

  @override
  void initState() {
    _subscription = _nativeAdController.stateChanged.listen(_onStateChanged);
    super.initState();
  }

  void _onStateChanged(AdLoadState state) {
    switch (state) {
      case AdLoadState.loading:
        setState(() {
          _height = 0.0;
        });
        break;

      case AdLoadState.loadCompleted:
        setState(() {
          _height = 350.0;
        });
        break;
      case AdLoadState.loadError:
        setState(() {
          _height = 0.0;
        });
        break;
      default:
        break;
    }
  }

  @override
  void dispose() {
    _subscription.cancel();
    _nativeAdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.guide.name),
      ),
      body: ListView.builder(
        itemCount: widget.guide.contents.length,
        itemBuilder: (context, index) {
          final contents = widget.guide.contents[index];
          return Column(
            children: [
              if (contents.title.isNotEmpty)
                CardText(
                  text: contents.title,
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              if (contents.text.isNotEmpty)
                CardText(
                  text: contents.text,
                  textStyle: TextStyle(
                    fontSize: 18,
                    height: 1.2,
                  ),
                ),
              if (contents.tip.isNotEmpty)
                CardText(
                  text: "Pro tip:\n" + contents.tip,
                  textStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 16,
                      color: Colors.deepPurpleAccent),
                ),
              if (index != 0 && index % 3 == 0)
                Container(
                  height: _height,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: NativeAdmob(
                    adUnitID: AdManager.nativeId[Random().nextInt(2)],
                    controller: _nativeAdController,
                    loading: Container(),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
