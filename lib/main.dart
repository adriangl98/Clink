// ignore_for_file: prefer_const_constructors
import 'date_brain.dart';
import 'package:flutter/material.dart';
import 'deal_brain.dart';
import 'banner_brain.dart';

DateBrain dateBrain = DateBrain();
DealBrain dealBrain = DealBrain();
DateTime dateTime = DateTime.now();

//COLOR PALLETTE
var foregroundColor = Color.fromRGBO(30, 56, 136, 1);
var contrastColor = Color.fromRGBO(71, 168, 189, 1);
var option1Color = Color.fromRGBO(255, 204, 0, 1);
var option2Color = Color.fromRGBO(242, 100, 25, 1);

//old black Color.fromRGBO(49, 49, 45, 1)
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
              color: Color.fromRGBO(255, 204, 0, 1),
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          backgroundColor: foregroundColor,
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
  List<Map> _books =
      dealBrain.initialDeal(); // fills _books with current day deals
  dynamic dayOfDeal = dateBrain.currentDate(); // initial banner day string

  SizedBox dayCard(String txt) {
    return SizedBox(
      width: 45.0,
      child: Card(
        elevation: 0.0,
        margin: EdgeInsets.only(left: 8.0),
        color: foregroundColor,
        shape: CircleBorder(side: BorderSide.none),
        child: InkWell(
          splashColor: option1Color,
          onTap: () {
            setState(
              () {
                if (txt == 'M') {
                  _books = dealBrain.mondayDeals();
                  dayOfDeal = 'Monday'; // changes banner string day to txt
                } else if (txt == 'T') {
                  _books = dealBrain.tuesdayDeals();
                  dayOfDeal = 'Tuesday';
                } else if (txt == 'W') {
                  _books = dealBrain.wednesdayDeals();
                  dayOfDeal = 'Wednesday';
                } else if (txt == 'Th') {
                  _books = dealBrain.thursdayDeals();
                  dayOfDeal = 'Thursday';
                } else if (txt == 'F') {
                  _books = dealBrain.fridayDeals();
                  dayOfDeal = 'Friday';
                } else if (txt == 'S') {
                  _books = dealBrain.saturdayDeals();
                  dayOfDeal = 'Saturday';
                } else if (txt == 'Su') {
                  _books = dealBrain.sundayDeals();
                  dayOfDeal = 'Sunday';
                } else if (txt == 'ED') {
                  _books = dealBrain.happyHourDeals();
                  dayOfDeal = 'Everyday';
                }
              },
            );
          },
          child: Align(
            alignment: Alignment.center,
            child: Text(
              txt,
              style: TextStyle(
                  color: option1Color,
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0), //original is 27.0
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String banner =
        '$dayOfDeal Deals'; //initial banner according to the var $dayofDeals
    dynamic dayBanner =
        BannerBrain().dayBanner(banner); // banner is initialized
    return SafeArea(
      child: Column(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: double.infinity,
              maxHeight: 65.0,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                dayCard('M'),
                dayCard('T'),
                dayCard('W'),
                dayCard('Th'),
                dayCard('F'),
                dayCard('S'),
                dayCard('Su'),
                dayCard('ED'),
              ],
            ),
          ),
          dayBanner, // Creates day Banner
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
