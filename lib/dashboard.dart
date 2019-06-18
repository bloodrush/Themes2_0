import 'package:flutter/material.dart';
//import 'package:flutter/scheduler.dart' show timeDilation;
import 'firstTab.dart';
import 'secondTab.dart';

class Dashboard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
//  timeDilation = 3.0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.pie_chart)),
              Tab(icon: Icon(Icons.picture_in_picture))
            ],
          ),
          title: Hero(
            tag: "logo",
            child: Image.asset("images/logo.png", width: 80.0,),

//            Text('ZOE', style: TextStyle(
//              fontFamily: 'Plaster',
////              fontSize: 8.0,
//            )
//            ),
//
          ),
        ),
        body: TabBarView(
          children: [
            FirstTab(),
            SecondTab(),
          ],
        ),
      ),
    );
  }
}
