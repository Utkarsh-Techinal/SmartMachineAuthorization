import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
  void main() => runApp(new MyApp());


//Booking Page to choose slot date
class BookingPage extends StatefulWidget {
  BookingPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State createState() => new  _BookingPageState();
}

class _BookingPageState extends State {
  DateTime _selectedValue = DateTime.now();
    void _showcontent() {
        showDialog<Null>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return new AlertDialog(

            title: new Text('Booked Slots on this day'),
            content: Container(
               width: 300.0,
                height: 230.0,
              child: new SingleChildScrollView(
                child: new ListBody(
                  children: <Widget>[
                    DataTable(
                      columns: [DataColumn(label: Text("StartTime"),),
                                DataColumn(label: Text("EndTime"),),
                                DataColumn(label: Text("Name"),),
                                
                               ],
                      rows: [DataRow(
                              cells: [DataCell(Text("9:00"),),
                                      DataCell(Text("10:00"),),
                                      DataCell(Text("ABC"),),
                                      ],),
                      
                      ],
                      
                    )
                  ],
                ),
              ),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('BOOK MY SLOT TIME'),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SlotTime()),
                  );
                  },
                  /*
                onPressed: () {
                  Navigator.of(context).pop();
                },*/
              ),
            ],
          );
        },
      );
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      title: Text("Choose Slot Date & Time"),
      backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

                  Text("Choose a Date:",
                  style: new TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  color: Colors.white,
                  ),),

                  Padding(
                  padding: EdgeInsets.all(20),
                  ),

                  Container(
                  padding: EdgeInsets.all(20.0),
                  color: Colors.teal,
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                                      Padding(
                                      padding: EdgeInsets.all(10),
                                      ),

                                      Text("${_selectedValue.day}-${_selectedValue.month}-${_selectedValue.year}",
                                      style: new TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w900,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.black,
                                      ),),

                                      Padding(
                                      padding: EdgeInsets.all(20),
                                      ),

                                      DatePickerTimeline(
                                      _selectedValue,
                                      onDateChange: (date) {
                                      // New date selected
                                      setState(() {
                                      _selectedValue = date;
                                          });},),

                        ],
                      ),
                    ),
                  Padding(padding: EdgeInsets.all(20),
                  ),

                  RaisedButton(
                  onPressed: _showcontent,
                    child: Text('Book Slot'),
                  ),


            ],
          ),
        ),
      ),
    );
  }
}


//Main Machine List Page
class MyApp extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return new MaterialApp(
        title: 'Machines',
        home: Scaffold( 
          backgroundColor: Colors.black87, 
             body: new Stack(
              fit: StackFit.expand,
              children: <Widget>[
                    SizedBox(
                    height:20.0
                    ),
                    Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    ),
                    MachineList(),
              ],
            ),
          ),
        );
      }
    }




class MachineList extends StatefulWidget {
    @override
   State createState() => new MachineListClass();
  }

class MachineListClass extends State {
@override 
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Colors.black,
      appBar: AppBar(
      title: Text("Machines"),
      backgroundColor: Colors.teal,
      ),
      body: Container(
    child: ListView(
    scrollDirection: Axis.vertical,
      children: <Widget>[
        
            Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Material(
                child: InkWell(
                  child: Container(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                                          
                                new Image(
                                  image: new AssetImage("assets/machine-1.png"),
                                  width: 200.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                  ),
                              ]
                            ),
                            
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                new Text("Bosch Professional GKS 190",
                                style: new TextStyle(
                                fontSize: 12.0,
                                color: Colors.teal,
                                ),
                                ),
                              ],
                            ),

                    ],
                    ),
                  ),
                
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                  );
                  },
                ), 
              ),
            ),

            Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Material(
                child: InkWell(
                  child: Container(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                                          
                                new Image(
                                  image: new AssetImage("assets/machine-2.png"),
                                  width: 200.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                  ),
                              ]
                            ),
                            
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                new Text("Bosch Professional GCM 12 MX",
                                style: new TextStyle(
                                fontSize: 12.0,
                                color: Colors.teal,
                                ),
                                ),
                              ],
                            ),

                    ],
                    ),
                  ),
                
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                  );
                  },
                ), 
              ),
            ),
            
            Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Material(
                child: InkWell(
                  child: Container(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                                          
                                new Image(
                                  image: new AssetImage("assets/machine-3.png"),
                                  width: 200.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                  ),
                              ]
                            ),
                            
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                new Text("Bosch Professional GBL 800 E",
                                style: new TextStyle(
                                fontSize: 12.0,
                                color: Colors.teal,
                                ),
                                ),
                              ],
                            ),

                    ],
                    ),
                  ),
                
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                  );
                  },
                ), 
              ),
            ),

            Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Material(
                child: InkWell(
                  child: Container(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                                          
                                new Image(
                                  image: new AssetImage("assets/machine-4.png"),
                                  width: 200.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                  ),
                              ]
                            ),
                            
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                new Text("Bosch Professional GWS 900-100",
                                style: new TextStyle(
                                fontSize: 12.0,
                                color: Colors.teal,
                                ),
                                ),
                              ],
                            ),

                    ],
                    ),
                  ),
                
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                  );
                  },
                ), 
              ),
            ),

            Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Material(
                child: InkWell(
                  child: Container(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                                          
                                new Image(
                                  image: new AssetImage("assets/machine-5.png"),
                                  width: 200.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                  ),
                              ]
                            ),
                            
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                new Text("Bosch Professional GCO 14-24 J",
                                style: new TextStyle(
                                fontSize: 12.0,
                                color: Colors.teal,
                                ),
                                ),
                              ],
                            ),

                    ],
                    ),
                  ),
                
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                  );
                  },
                ), 
              ),
            ),

            Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
              child: Material(
                child: InkWell(
                  child: Container(
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black,
                  child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                                          
                                new Image(
                                  image: new AssetImage("assets/machine-6.png"),
                                  width: 200.0,
                                  height: 120.0,
                                  fit: BoxFit.fitHeight,
                                  ),
                              ]
                            ),
                            
                            new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                new Text("Bosch Professional GPO 12 CE",
                                style: new TextStyle(
                                fontSize: 12.0,
                                color: Colors.teal,
                                ),
                                ),
                              ],
                            ),

                    ],
                    ),
                  ),
                
                  onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BookingPage()),
                  );
                  },
                ), 
              ),
            ),

     ]
    )
  ),);
}
}


  class SlotTime extends StatelessWidget {
    
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Fablab',
      home: SlotTimePage(),
      theme: ThemeData(
        primarySwatch: Colors.green,
        backgroundColor: Colors.green,
      ),
    );
  }
}
class SlotTimePage extends StatefulWidget {
 @override
 State createState() => new SlotTimePageState();
}

class SlotTimePageState extends State<SlotTimePage> {
  DateTime _startTime = DateTime.now();
  DateTime _endTime = DateTime.now();

  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      title: Text("Slot Time"),
      backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
              Padding(padding: EdgeInsets.all(20)),
               Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text("Start Time:", style: TextStyle(fontSize: 20,color: Colors.white)),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                  child: new TimePickerSpinner(
                   normalTextStyle: TextStyle(backgroundColor: Colors.black, color: Colors.white,),
                   highlightedTextStyle: TextStyle(color: Colors.teal,),
                    itemHeight: 40,
                    isForce2Digits: true,
                    spacing: 12,
                    minutesInterval: 15,
                    onTimeChange: (time) {
                  setState(() {
                    _startTime = time;
                  });
                   },
                 ),
               ),],),
                
              Padding(padding: EdgeInsets.only(top: 20)),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    _startTime.hour.toString().padLeft(2, '0') + ':' +
                    _startTime.minute.toString().padLeft(2, '0') + ':' +
                    _startTime.second.toString().padLeft(2, '0'),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),],
            ),


              Padding(padding: EdgeInsets.all(30)),
               Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text("End Time:", style: TextStyle(fontSize: 20,color: Colors.white)),
                  Padding(padding: EdgeInsets.all(20)),
                  Container(
                  child: new TimePickerSpinner(
                   normalTextStyle: TextStyle(backgroundColor: Colors.black, color: Colors.white,),
                   highlightedTextStyle: TextStyle(color: Colors.teal,),
                    itemHeight: 40,
                    isForce2Digits: true,
                    spacing: 12,
                    minutesInterval: 15,
                    onTimeChange: (time) {
                  setState(() {
                    _endTime = time;
                  });
                   },
                 ),
               ),],),
                
              Padding(padding: EdgeInsets.only(top: 20)),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                    _endTime.hour.toString().padLeft(2, '0') + ':' +
                    _endTime.minute.toString().padLeft(2, '0') + ':' +
                    _endTime.second.toString().padLeft(2, '0'),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),],
            ),


            Padding(padding: EdgeInsets.all(30)),
            MaterialButton(
                                    color: Colors.teal,
                                    textColor: Colors.white,
                                    child: new Text("Book My Slot"),
                                    onPressed: ()=>{
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BookingPage()), //should go to my bookings page//
                                      ),
                                    },
                                    splashColor: Colors.white24,
                                    minWidth: 110.0,
                                  ),

        ],),
        
         
        ),);
  }}
     /* body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //Container(padding: EdgeInsets.all(5),
                Row(
                  children: <Widget>[
                  Text("Start Time:", style: TextStyle(color: Colors.white)),
                  Container(
                  child: new TimePickerSpinner(
                   normalTextStyle: TextStyle(backgroundColor: Colors.black, color: Colors.white,),
                   highlightedTextStyle: TextStyle(color: Colors.teal,),
                    itemHeight: 40,
                    isForce2Digits: true,
                    spacing: 12,
                    minutesInterval: 15,
                    onTimeChange: (time) {
                  setState(() {
                    _startTime = time;
                  });
                   },
                 ),
               ),],),

                Row(
              //margin: EdgeInsets.symmetric(
               //   vertical: 50
              //),
              Text(
                    _startTime.hour.toString().padLeft(2, '0') + ':' +
                    _startTime.minute.toString().padLeft(2, '0') + ':' +
                    _startTime.second.toString().padLeft(2, '0'),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

                Row(
                 children: <Widget>[
                   Text("End Time: ",style: TextStyle(color: Colors.white),),
                   TimePickerSpinner(
                   normalTextStyle: TextStyle(backgroundColor: Colors.black, color: Colors.white,),
                   highlightedTextStyle: TextStyle(color: Colors.teal,),
                    itemHeight: 40,
                    isForce2Digits: true,
                    spacing: 12,
                    minutesInterval: 15,
                    onTimeChange: (time) {
                  setState(() {
                    _endTime = time;
                  });
              },
                 ),],
               ),
            Row(
              //margin: EdgeInsets.symmetric(
                //  vertical: 50
             // ),
               Text(
                _endTime.hour.toString().padLeft(2, '0') + ':' +
                    _endTime.minute.toString().padLeft(2, '0') + ':' +
                    _endTime.second.toString().padLeft(2, '0'),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),

            /*MaterialButton(
                                    color: Colors.teal,
                                    textColor: Colors.white,
                                    child: new Text("Book My Slot"),
                                    onPressed: ()=>{
                                      Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BookingPage()), //should go to my bookings page//
                                      ),
                                    },
                                    splashColor: Colors.white24,
                                    minWidth: 110.0,
                                  ),*/
          ],
        ),
      ),
      
    );

  }}
 */