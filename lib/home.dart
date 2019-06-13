import 'package:themes2_0/custom_theme.dart';
import 'package:themes2_0/themes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'password.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {
  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(),
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
            Row(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    _changeTheme(context, MyThemeKeys.LIGHT);
                  },
                  child: Text("Light!"),
                ),
                RaisedButton(
                  onPressed: () {
                    _changeTheme(context, MyThemeKeys.DARK);
                  },
                  child: Text("Dark!"),
                ),
                RaisedButton(
                  onPressed: () {
                    _changeTheme(context, MyThemeKeys.DARKER);
                  },
                  child: Text("Darker!"),
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text("Homepage"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                      labelText: ('User name'),
                      icon: Padding(
                          padding: EdgeInsets.only(top: 15.0),
                          child: Icon(Icons.person, size: 32.0))),
                ),
                SizedBox(height: 10.0,),


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
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('EXIT'),
                      onPressed: ( ()=> {}),
                    ),
                    RaisedButton(
                      child: Text('LOGIN'),
                      onPressed: ( ()=> {}),

                    )
                  ],
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
