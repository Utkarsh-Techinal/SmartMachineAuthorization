import 'package:flutter/material.dart';
  

  void main() => runApp(new MyApp());
  
  class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'FablabMachineAuthorizer',
        home: Scaffold(  
          backgroundColor: Colors.black87,
          body: SafeArea(
          child:Center( 
          child: new SwitchWidget(),  
    ),
    ),
    ),
    );
    }
  }

 class SwitchWidget extends StatefulWidget {
    @override
    SwitchWidgetClass createState() => new SwitchWidgetClass();
  }
  
class SwitchWidgetClass extends State {

  bool switchControl = false;
  var textHolder = 'Machine is OFF';

  void toggleSwitch(bool value) {

      if(switchControl == false)
      {
        setState(() {
          switchControl = true;
          textHolder = 'Machine is ON';
        });
        
        // Put your code here which you want to execute on Switch ON event.
        //Send value 1 
      }
      else
      {
        setState(() {
          switchControl = false;
           textHolder = 'Machine is OFF';
        });
        
        // Put your code here which you want to execute on Switch OFF event.
        //Send value 0
      }
  }
  
    @override
    Widget build(BuildContext context) {
      return Column( 
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: <Widget>[
                Transform.scale( 
                scale: 1.5,
                
                child: Text("Machine Authorization",
                
                textAlign: TextAlign.center,
                style: new TextStyle(
                fontSize: 20.0,
                color: Colors.teal,
                decoration: TextDecoration.none,
                 ),
              ),),
              Padding(padding: EdgeInsets.only(top: 150.0),
              ),
              Transform.scale( 
                scale: 2.0,
                child: Switch(
                  onChanged: toggleSwitch,
                  value: switchControl,
                  activeColor: Colors.white,
                  activeTrackColor: Colors.teal,
                  inactiveThumbColor: Colors.white,
                  inactiveTrackColor: Colors.grey,
                  )
                ),
              Padding(padding: EdgeInsets.only(top: 12.0),
               ),
               Text('$textHolder', style: TextStyle(fontSize: 26, color: Colors.teal),),
               Padding(padding: EdgeInsets.only(bottom: 30.0),
               ),
               ], 
    );
  }
}