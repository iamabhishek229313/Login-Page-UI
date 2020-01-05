import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double heightOfImage = MediaQuery.of(context).size.height * 35.0 / 100.0;

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: new Column(
        children: <Widget>[
          new Container(
            height: heightOfImage,
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage('assets/image1.png'),
                    fit: BoxFit.fitWidth,alignment: Alignment.topCenter)),
          ),
          new Container(
              decoration: new BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: new BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0))),
              child: new Padding(
                padding: const EdgeInsets.all(18.0),
                child: new Column(
                  children: <Widget>[
                    new Align(
                      alignment: Alignment.topLeft,
                      child: new Text(
                        "Sign in",
                        style: new TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    new SizedBox(height: 30.0),
                    new Container(
                      height: 50.0,
                      decoration: new BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: new BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new TextField(
                          decoration: new InputDecoration(
                            hintText: "User name",
                            icon: new Icon(
                              Icons.person_outline,
                              color: Colors.blueGrey.shade500,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(height: 25.0),
                    new Container(
                      height: 50.0,
                      decoration: new BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new TextField(
                          obscureText: true,
                          decoration: new InputDecoration(
                            hintText: "Password",
                            icon: new Icon(
                              Icons.lock_outline,
                              color: Colors.blueGrey.shade500,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(height: 30.0),
                    new ButtonTheme(
                      minWidth:
                          MediaQuery.of(context).size.width - 18.0 * 2.0,
                      height: 50.0,
                      child: new RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        color: Theme.of(context).secondaryHeaderColor,
                        child: new Text(
                          "SIGN IN",
                          style: new TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    new SizedBox(height: 20.0),
                    new Align(
                      alignment: Alignment.center,
                      child: new Text("Forgot your password?",
                          style: new TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          )),
                    ),
                    new SizedBox(height: 40.0),
                    new Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text("Don't have an account?",
                              style: new TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              )),
                          new InkWell(
                            child: new Text(
                              "Sign up",
                              style: new TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                                color: Theme.of(context).secondaryHeaderColor,
                              ),
                            ),
                            onTap: () {},
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
