// ignore_for_file: prefer_const_constructors
import 'date_brain.dart';
import 'package:flutter/material.dart';
import 'deal_brain.dart';

DateBrain dateBrain = DateBrain();
DealBrain dealBrain = DealBrain();
DateTime dateTime = DateTime.now();

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'Clink!',
            style: TextStyle(
              color: Color.fromRGBO(49, 49, 45, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromRGBO(248, 218, 111, 1),
        ),
        body: DayPage(),
      ),
    ),
  );
}

class DayPage extends StatefulWidget {
  @override
  State<DayPage> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  List<Map> _books = dealBrain.initialDeal();
  String header = '';
  bool isPressed = false;
  var dayQuestion = Container(
    child: Center(
      child: Text(
        dateBrain.currentDate() + ' Deals',
        style: TextStyle(
          color: Color.fromRGBO(49, 49, 45, 1),
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );

  Card dayCard(String txt) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Color.fromRGBO(248, 218, 111, 1), width: 3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        splashColor: Color.fromRGBO(248, 218, 111, 1),
        onTap: () {
          setState(
            () {
              if (txt == 'Monday') {
                _books = dealBrain.mondayDeals();
              } else if (txt == 'Tuesday') {
                _books = dealBrain.tuesdayDeals();
              } else if (txt == 'Wednesday') {
                _books = dealBrain.wednesdayDeals();
              } else if (txt == 'Thursday') {
                _books = dealBrain.thursdayDeals();
              } else if (txt == 'Friday') {
                _books = dealBrain.fridayDeals();
              } else if (txt == 'Saturday') {
                _books = dealBrain.saturdayDeals();
              } else if (txt == 'Sunday') {
                _books = dealBrain.sundayDeals();
              } else if (txt == 'Happy Hour') {
                _books = dealBrain.happyHourDeals();
              }
            },
          );
        },
        child: Container(
          width: 90.0,
          child: Align(
            alignment: Alignment.center,
            child: Text(txt),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: double.infinity,
              maxHeight: 115.0,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                dayCard('Happy Hour'),
                dayCard('Monday'),
                dayCard('Tuesday'),
                dayCard('Wednesday'),
                dayCard('Thursday'),
                dayCard('Friday'),
                dayCard('Saturday'),
                dayCard('Sunday'),
              ],
            ),
          ),
          dayQuestion,
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: _createDataTable(),
            ),
          ),
        ],
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(
      columns: _createColumns(),
      rows: _createRows(),
      headingTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(49, 49, 45, 1),
          fontSize: 25),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      DataColumn(
        label: Text(
          'Bar',
        ),
      ),
      DataColumn(
        label: Text(
          'Drink',
        ),
      ),
      DataColumn(
        label: Text(
          '\$',
        ),
      ),
    ];
  }

  List<DataRow> _createRows() {
    return _books
        .map((book) => DataRow(cells: [
              DataCell(Text(book['Bar'])),
              DataCell(Text(book['Drinks'])),
              DataCell(Text(book['Price']))
            ]))
        .toList();
  }
}
