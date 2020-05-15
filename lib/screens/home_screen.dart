import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localizationsample/generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String _imagePath = "assets/images/back01.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(_imagePath),
          Center(
            child: Text(
              (S.of(context).hello),
            style: TextStyle(
              fontSize: 24.0,
            ),),
          ),
          SizedBox(
            height: 30.0,
          ),
          RaisedButton(
            color: Colors.redAccent,
            onPressed: () => _changeLocale("en"),
            child: Text("英語"),
          ),
          RaisedButton(
            color: Colors.blueAccent,
            onPressed: () => _changeLocale("ja"),
            child: Text("日本語"),
          ),
          RaisedButton(
            color: Colors.greenAccent,
            onPressed: () => _changeLocale("de"),
            child: Text("ドイツ語"),
          ),
          RaisedButton(
            color: Colors.white30,
            onPressed: () => _changeLocale("it"),
            child: Text("イタリア語"),
          ),
        ],
      ),
    );
  }

  _changeLocale(String languageCode) {
    setState(() {
      final locale = Locale(languageCode);
      S.load(locale);

      if (locale == Locale("en")){
        _imagePath = "assets/images/back01.jpg";
      } else if (locale == Locale("ja")){
        _imagePath = "assets/images/back02.jpg";
      } else if (locale == Locale("de")){
        _imagePath = "assets/images/back03.jpg";
      } else {
        _imagePath = "assets/images/back04.jpg";
      }
    });
  }
}
