import 'package:flutter/material.dart';

void main() => runApp(MyBookings());

class MyBookings extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Bookings',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyBookingsPage(title: 'My Bookings',),
    );
  }
}

class MyBookingsPage extends StatefulWidget {
  MyBookingsPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyBookingsPageState createState() => _MyBookingsPageState();
}

class _MyBookingsPageState extends State<MyBookingsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      title: Text(widget.title),
      ),

      //contents of scaffold//
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:20)),
            //row for ongoing//
            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(10)),
                        Text('Ongoing',
                        style: TextStyle(color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,),
                        ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom:10)),
                    //table
                     Row(
                       children: <Widget>[
                         Padding(padding: EdgeInsets.all(10)),
                         Container(
                            width: MediaQuery.of(context).size.width - 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.teal, //Color(0xff5a348b),
                              gradient: LinearGradient(
                                  colors: [Colors.green, Colors.teal],//Color(0xffebac38), Color(0xffde4d2a)],
                                  begin: Alignment.centerRight,
                                  end: Alignment(-1.0, -2.0)), ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: FittedBox(
                                    child: DataTable(
                                      columnSpacing: 20,
                          columns: [
                                            DataColumn(label: Text("Date"),),
                                            DataColumn(label: Text("StartTime"),),
                                            DataColumn(label: Text("EndTime"),),
                                            DataColumn(label: Text("MachineName"),),
                                            DataColumn(label: Text(""),),
                                           ],
                                           
                          rows: [DataRow(
                                          cells: [DataCell(Text("TODAY", style: TextStyle(color: Colors.white)),),
                                                  DataCell(Text("09:00", style: TextStyle(color: Colors.white)),),
                                                  DataCell(Text("10:00", style: TextStyle(color: Colors.white)),),
                                                  DataCell(Text("Lathe", style: TextStyle(color: Colors.white)),),
                                                  DataCell(RaisedButton(
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15.0),
                                                    ),
                                                  color: Colors.orange,
                                                  onPressed: () {},child:Text("Surrender", style: TextStyle(color: Colors.black))),),
                                                  ],),
                          ],
                        ),
                                  ),
                                ),
                              ),
                        ),
                      ],
                     ),
                    //padding
                    Padding(padding: EdgeInsets.only(bottom:20)),
                  ],)
              ],
              ),

            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(10)),
                        Text('Upcoming',
                        style: TextStyle(color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,),
                        ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom:10)),
                    //table
                     Row(
                       children: <Widget>[
                         Padding(padding: EdgeInsets.all(10)),
                         Container(
                            width: MediaQuery.of(context).size.width - 40.0,
                             decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.teal, //Color(0xff5a348b),
                              gradient: LinearGradient(
                                  colors: [Colors.green, Colors.teal],//Color(0xffebac38), Color(0xffde4d2a)],
                                  begin: Alignment.centerRight,
                                  end: Alignment(-1.0, -2.0)), ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DataTable(
                                    columnSpacing: 20,
                          columns: [      DataColumn(label: Text("Date"),),
                                          DataColumn(label: Text("StartTime"),),
                                          DataColumn(label: Text("EndTime"),),
                                          DataColumn(label: Text("MachineName"),),
                                          DataColumn(label: Text(""),),
                                         ],
                          rows: [DataRow(
                                        cells: [DataCell(Text("Date here", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("9:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("10:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("Lathe", style: TextStyle(color: Colors.white)),),
                                                DataCell(RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15.0),
                                                    ),
                                                color: Colors.orange,
                                                onPressed: () {},child: Text("Cancel"),),),
                                                
                                                ],),
                                DataRow(
                                        cells: [DataCell(Text("Date here", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("9:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("10:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("3D Printer", style: TextStyle(color: Colors.white)),),
                                                DataCell(RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(15.0),
                                                    ),
                                                color: Colors.orange,
                                                onPressed: () {},child: Text("Cancel"),),),
                                                
                                                ],),
                          ],
                        ),
                                ),
                              ),
                        ),
                      ],
                     ),
                    //padding
                    Padding(padding: EdgeInsets.only(bottom:20)),
                  ],)
              ],
              ),

            Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.all(10)),
                        Text('Completed',
                        style: TextStyle(color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,),
                        ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.only(bottom:10)),
                    //table
                     Row(
                       children: <Widget>[
                         Padding(padding: EdgeInsets.all(10)),
                         Container(
                            width: MediaQuery.of(context).size.width - 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.teal, //Color(0xff5a348b),
                              gradient: LinearGradient(
                                  colors: [Colors.green, Colors.teal],//Color(0xffebac38), Color(0xffde4d2a)],
                                  begin: Alignment.centerRight,
                                  end: Alignment(-1.0, -2.0)), ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: DataTable(
                                    columnSpacing: 20,
                          columns: [      DataColumn(label: Text("Date"),),
                                          DataColumn(label: Text("StartTime"),),
                                          DataColumn(label: Text("FinishTime"),),
                                          DataColumn(label: Text("Machine Name"),),
                                          DataColumn(label: Text("Credits Used"),),
                                          DataColumn(label: Text("Power Consumed"),),
                                         ],
                          rows: [DataRow(
                                        cells: [DataCell(Text("Date here", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("9:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("10:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("Drill M/C", style: TextStyle(color: Colors.white)),),
                                                 DataCell(Text("14", style: TextStyle(color: Colors.white)),),
                                                  DataCell(Text("X KWatts/hr", style: TextStyle(color: Colors.white)),),
                                                ],),
                                    DataRow(
                                        cells: [DataCell(Text("Date here", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("9:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("10:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("Cutting M/C", style: TextStyle(color: Colors.white)),),
                                                 DataCell(Text("20", style: TextStyle(color: Colors.white)),),
                                                  DataCell(Text("Y Kwatts/hr", style: TextStyle(color: Colors.white)),),
                                                ],),
                                    DataRow(
                                        cells: [DataCell(Text("Date here", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("9:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("10:00", style: TextStyle(color: Colors.white)),),
                                                DataCell(Text("Lathe", style: TextStyle(color: Colors.white)),),
                                                 DataCell(Text("7", style: TextStyle(color: Colors.white)),),
                                                  DataCell(Text("Z KWatts/hr", style: TextStyle(color: Colors.white)),),
                                                ],),
                          ],
                        ),
                                ),
                              ),
                        ),
                      ],
                     ),
                    //padding
                    Padding(padding: EdgeInsets.only(bottom:20)),
                  ],)
              ],
              ),


          ],
        ),
      ),
    
    );
  }
}
