import 'package:flutter/material.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fablab',
      home: new LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.green,
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
 @override
 State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black87,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/fablablogo.png"),
            fit: BoxFit.fitWidth,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          new Column(
            //make changes here//
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(image: new AssetImage("assets/fablablogo.png"),
               width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
                ),
              new Form(
                child: new Theme(
                  data: ThemeData(
                    brightness: Brightness.dark,
                    primarySwatch: Colors.green,
                    inputDecorationTheme: new InputDecorationTheme(
                      labelStyle: new TextStyle(color: Colors.teal, fontSize: 16.0)
                    ),
                    ),
                    child: new Container(
                      padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 20.0,),
                        child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              labelText:"Enter LoginID",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                            labelText:"Enter Password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                           ),
                          new Padding(padding: EdgeInsets.only(top: 30.0),
                          ),
                      
                      new Container(
                        height: 75.0,
                        
                            child: new Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                             // verticalDirection: VerticalDirection.up,
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  new Column( 
                                     crossAxisAlignment: CrossAxisAlignment.end,
                                      verticalDirection: VerticalDirection.down,
                                    children: <Widget>[
                                       new MaterialButton(
                                    color: Colors.teal,
                                    textColor: Colors.white,
                                    child: new Text("Sign Up"),
                                    onPressed: ()=>{},
                                    splashColor: Colors.white24,
                                    minWidth: 110.0,
                                  ),
                                  
                                  ]
                                    ),
                                    
                                  new Padding(padding: EdgeInsets.only(right: 40.0),),
                                  new Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                      verticalDirection: VerticalDirection.down,

                                    children: <Widget>[
                                    new MaterialButton(
                                    color: Colors.teal,
                                    textColor: Colors.white,
                                    
                                    child: new Text("Login"),
                                    onPressed: ()=>{},
                                    splashColor: Colors.white24,
                                    minWidth: 110.0,
                                  ),
                                  //new Padding(padding: EdgeInsets.only(top: 15.0),
                                  new  Text("Forgot Password?",
                                  style: new TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.teal,
                                      decoration: TextDecoration.underline,
                                      ),
                                     ),
                                  ]
                                )
                              ]
                          ),
                          ),
                     new Container(
                        height: 40.0,
                          width: 20.0,
                         
                       child: new Row(
                         
                          //backgroundColor: Colors.white,
                          children: <Widget>[
                            
                          ],)
                              ),

                         
                          new Padding(padding: EdgeInsets.only(top: 40.0),
                          ),
                          new Text("Issues with login? Contact us",
                           style: new TextStyle(
                             fontSize: 12.0,
                             color: Colors.teal,
                              decoration: TextDecoration.underline,
                              ),
                              ),
                      ],
                  ),
                    ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}

