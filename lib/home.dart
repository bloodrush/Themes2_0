import 'package:themes2_0/custom_theme.dart';
import 'package:themes2_0/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'password.dart';
import 'dashboard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  bool themeSwitch = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(
                child: DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'ZOE',
                        style: TextStyle(
                            fontFamily: 'Plaster',
                            fontSize: 72.0,
                            color: Theme.of(context).primaryColor),
                      ),
                      Text(
                        'Financial solutions',
                        style: TextStyle(fontFamily: 'Plaster'),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.calculator,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Calculator',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.building,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Offices',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.searchLocation,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Contacts',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.signOutAlt,
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Exit',
                          style: TextStyle(fontSize: 20),
                        ))
                  ],
                ),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(),
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0, top: 20.0, bottom: 20.0),
                child: Text('External links'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.home,
                    color: Color.fromRGBO(101, 121, 155, 1),
                  ),
                  Icon(
                    FontAwesomeIcons.envelope,
                    color: Color.fromRGBO(101, 121, 155, 1),
                  ),
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: Color.fromRGBO(101, 121, 155, 1),
                  ),
                  Icon(
                    FontAwesomeIcons.twitter,
                    color: Color.fromRGBO(101, 121, 155, 1),
                  ),
                ],
              ),
              Divider(
                height: 50.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Dark theme'),
                    Switch(
                      activeColor: Theme.of(context).primaryColor,
                      value: themeSwitch,
                      onChanged: (newValue) {
                        if(newValue) {
                          _changeTheme(context, MyThemeKeys.DARK);
                        }else {
                          _changeTheme(context, MyThemeKeys.LIGHT);
                        }

                        setState(() {
                          themeSwitch = newValue;
                        });


                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Text(""),
        ),
        body: Stack(
          children: <Widget>[
            Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("images/bgr.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Container()),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.1, 0.7],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Theme.of(context).primaryColor.withOpacity(0.1),
                    Theme.of(context).backgroundColor.withOpacity(0.7),
                  ],
                ),
              ),
            ),
            ListView(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 10,
                ),
                Center(
                  child:
//                          Text(
//                        'ZOE',
//                        style: TextStyle(
//                            fontFamily: 'Plaster',
//                            fontSize: 72.0,
//                            color: Theme.of(context).primaryColor),
//                      )
                  Hero(
                    tag: "logo",
                    child: Image.asset("images/logo.png", width: 200.0,),
                  ),
                ),
//                SizedBox(
//                  height: 25.0,
//                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Card(
                        margin: EdgeInsets.only(
                            bottom: 20.0, left: 40.0, right: 40.0),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: 20.0, right: 20.0, top: 20.0, bottom: 50.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              TextField(
                                decoration: InputDecoration(
                                    labelText: ('User name'),
                                    icon: Padding(
                                        padding: EdgeInsets.only(top: 15.0),
                                        child: Icon(Icons.person, size: 32.0))),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              PasswordField(
//                  fieldKey: _passwordFieldKey,
//                  helperText: 'No more than 8 characters.',
                                labelText: 'Password',
//                  onFieldSubmitted: (String value) {
//                    setState(() {
//                      this._password = value;
//                    });
//                  },
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 180.0,
                      height: 40.0,
                      child: RaisedButton(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        onPressed: (() => {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation1, animation2) {
                                    return Dashboard();
                                  },
                                  transitionsBuilder:
                                      (context, animation1, animation2, child) {
                                    return FadeTransition(
                                      opacity: animation1,
                                      child: child,
                                    );
                                  },
                                  transitionDuration:
                                      Duration(milliseconds: 650),
                                ),
                              )
                            }),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    'Forgot password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    margin: EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RaisedButton(
                            child: Icon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            shape: CircleBorder()),
                        RaisedButton(
                            child: Icon(
                              FontAwesomeIcons.google,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                            shape: CircleBorder())
                      ],
                    )),
              ],
            )
          ],
        ));
  }
}
