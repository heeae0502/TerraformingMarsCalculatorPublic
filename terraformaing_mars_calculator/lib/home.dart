import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:terraformaing_mars_calculator/Calculator.dart';
import 'package:terraformaing_mars_calculator/adImporter.dart';

import 'multiPlay.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    AdImporter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("title".tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("singlePlay".tr()),
              onPressed: () => startSinglePlay(),
            ),
            RaisedButton(
              child: Text("multiPlay".tr()),
              onPressed: () => startMultiPlay(),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              margin: const EdgeInsets.all(30),
              child: Center(
                child: Html(data: """
                      <div>Icons made by 
                      <a href="https://www.flaticon.com/authors/ddara" title="dDara">dDara</a> from <a href="https://www.flaticon.com/" title="Flaticon">www.flaticon.com</a>
                      </div>
                      """),
              ),
            ),
          ],
        ),
      ),
    );
  }

  startSinglePlay() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Calculator()));
  }

  startMultiPlay() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MultiPlay()));
  }
}
