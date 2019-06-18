import 'package:flutter/material.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// Chart data

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<List<CircularStackEntry>> _quarterlyProfitPieData = [
      <CircularStackEntry>[
        new CircularStackEntry(
          <CircularSegmentEntry>[
            new CircularSegmentEntry(500.0, Theme.of(context).accentColor,
                rankKey: 'Q1'),
            new CircularSegmentEntry(1000.0, Theme.of(context).primaryColor, rankKey: 'Q2'),
            new CircularSegmentEntry(2000.0, Colors.pink, rankKey: 'Q3'),
          ],
          rankKey: 'Quarterly Profits',
        ),
      ],
    ];

    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        Center(
          child: new AnimatedCircularChart(
            edgeStyle: SegmentEdgeStyle.round,
            size: const Size(350.0, 350.0),
            initialChartData: _quarterlyProfitPieData[0],
            chartType: CircularChartType.Radial,
            holeLabel: '\u0024 8,810.09',
            labelStyle:
                TextStyle(fontSize: 32, color: Color.fromRGBO(0, 0, 0, 1)),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      width: 5,
                      height: 40,
                      decoration:
                          BoxDecoration(color: Theme.of(context).primaryColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              'Due amount',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Due by 24/07/2019',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 100),
                          child: Text(
                            '\u0024 1,110.09',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      width: 5,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              '3rd party dues',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Due by 12/11/2019',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 26),
                          child: Text(
                            '\u0024 2,110.09',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      width: 5,
                      height: 40,
                      decoration:
                          BoxDecoration(color: Theme.of(context).accentColor),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Other dues',
                              style: TextStyle(fontSize: 16),
                            ),
                            Text(
                              'Due by 24/07/2019',
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Container(
                          child: Text(
                            '\u0024 5,910.99',
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
