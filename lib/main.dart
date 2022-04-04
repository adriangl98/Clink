import 'package:flutter/material.dart';

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
/*   String bar = '';
  String drink = '';
  String price = ''; */
  List<Map> _books = [
    {'Bar': 'Chimy\'s', 'Drinks': 'Drafts 4-7pm', 'Price': '2.00'},
    {'Bar': 'Chimy\'s', 'Drinks': 'Doubles 4-7pm', 'Price': '4.00'},
    {'Bar': 'Chimy\'s', 'Drinks': 'House Margarita 4-7pm', 'Price': '5.00'},
    {
      'Bar': 'Rebel Draft House',
      'Drinks': 'Domestic Buckets',
      'Price': '12.00'
    },
    {'Bar': 'Rough Draught', 'Drinks': 'Craft Beer Pints 4-8', 'Price': '3.50'},
    {'Bar': 'Logies', 'Drinks': 'Montucky', 'Price': '3.00'},
    {'Bar': 'Commander\'s Cove', 'Drinks': 'Rumble Shots', 'Price': '4.00'},
    {'Bar': 'Commander\'s Cove', 'Drinks': 'Pickle Shots', 'Price': '3.00'},
    {'Bar': 'Dixie Chicken', 'Drinks': '4-8??', 'Price': 'X.XX'},
  ];

  var dayQuestion = Container(
    padding: const EdgeInsets.only(top: 25.0),
    child: const Center(
      child: Text(
        'What day are you drinking?',
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
          setState(() {
            if (txt == 'Monday') {
              _books = [
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'Mules and Mint Juleps',
                  'Price': '5.00'
                },
                {'Bar': 'Dixie Chicken', 'Drinks': 'Chuggers', 'Price': '5.00'},
              ];
            } else if (txt == 'Tuesday') {
              _books = [
                {
                  'Bar': 'Chimy\'s',
                  'Drinks': 'Dos Equis & Michelob Ultra',
                  'Price': '2.00'
                },
                {
                  'Bar': 'Chimy\'s',
                  'Drinks': 'Jose Cuervo Shots',
                  'Price': '3.00'
                },
                {'Bar': 'Rebel Draft House', 'Drinks': 'Teas', 'Price': '2.75'},
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'All Whiskey',
                  'Price': '2.00 off'
                },
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'All Beer',
                  'Price': '1.00 off'
                },
                {'Bar': 'The Spot', 'Drinks': 'Wells & Shots', 'Price': '2.50'},
                {
                  'Bar': 'The Spot',
                  'Drinks': 'Bottles & Seltzers',
                  'Price': '2.50'
                },
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'House Margaritas',
                  'Price': '4.00'
                },
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Flavored Margaritas',
                  'Price': '5.00'
                },
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Mexican Beer',
                  'Price': '3.50'
                },
                {'Bar': 'Dixie Chicken', 'Drinks': 'Pitchers', 'Price': 'X.XX'},
                {
                  'Bar': 'Draconian Lounge',
                  'Drinks': 'Shots, Double Wells, Domestics',
                  'Price': '3.00'
                },
                {
                  'Bar': 'Good Bull Icehouse',
                  'Drinks': 'Shot Deals',
                  'Price': 'X.XX'
                },
              ];
            } else if (txt == 'Wednesday') {
              _books = [
                {
                  'Bar': 'Chimy\'s',
                  'Drinks': 'DP Shootouts & Whiskeyritas',
                  'Price': '4.00'
                },
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'Old & New Fashioned, Manhattan',
                  'Price': '6.00 off'
                },
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Drag Night',
                  'Price': 'X.XX'
                },
                {
                  'Bar': 'Dixie Chicken',
                  'Drinks': 'Whiskey',
                  'Price': 'Half off'
                },
                {
                  'Bar': 'Draconian Lounge',
                  'Drinks': 'Shots, Double Wells, Domestics',
                  'Price': '3.00'
                },
                {
                  'Bar': 'Good Bull Icehouse',
                  'Drinks': 'Shot Deals',
                  'Price': 'X.XX'
                },
              ];
            } else if (txt == 'Thursday') {
              _books = [
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'All Whiskey',
                  'Price': '2.00 off'
                },
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'All Beer',
                  'Price': '1.00 off'
                },
                {
                  'Bar': 'Duddleys Draw',
                  'Drinks': 'Well Shots',
                  'Price': '2.50'
                },
                {
                  'Bar': 'Duddley\'s Draw',
                  'Drinks': 'Grandslams',
                  'Price': '6.00'
                },
                {
                  'Bar': 'Dry Bean',
                  'Drinks': 'Specialty Shots',
                  'Price': '4.00'
                },
                {'Bar': 'Backyard', 'Drinks': 'Wells', 'Price': '1.50'},
                {
                  'Bar': 'Cedar Lane',
                  'Drinks': 'Beers and Wells 9-11pm',
                  'Price': '1.00'
                },
                {
                  'Bar': 'Paddock',
                  'Drinks': 'Long Island Iced Tea',
                  'Price': 'X.XX'
                },
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Wells',
                  'Price': '2.00'
                },
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Domestics',
                  'Price': '3.00'
                },
                {
                  'Bar': 'O\'Bannon\'s',
                  'Drinks': 'Drafts',
                  'Price': 'Half off'
                },
                {'Bar': 'Dixie Chicken', 'Drinks': 'Pints', 'Price': '2.00'},
                {'Bar': 'Shiner Park', 'Drinks': 'Wells', 'Price': '1.00'},
                {'Bar': 'Shiner Park', 'Drinks': 'Champagne', 'Price': '5.00'},
                {
                  'Bar': 'Hurricane Harry\'s',
                  'Drinks': 'Wells',
                  'Price': '2.00'
                },
                {
                  'Bar': 'Hurricane Harry\'s',
                  'Drinks': 'Domestics',
                  'Price': '3.00'
                },
                {
                  'Bar': 'Draconian Lounge',
                  'Drinks': 'Shots, Double Wells, Domestics',
                  'Price': '3.00'
                },
                {
                  'Bar': 'Good Bull Icehouse',
                  'Drinks': 'Caprifun',
                  'Price': '5.00'
                },
                {
                  'Bar': 'Good Bull Icehouse',
                  'Drinks': 'Pitchers',
                  'Price': '10.00'
                },
              ];
            } else if (txt == 'Friday') {
              _books = [
                {
                  'Bar': 'Dry Bean',
                  'Drinks': 'Specialty Shots',
                  'Price': '4.00'
                },
                {'Bar': 'Paddock', 'Drinks': 'Fishbowl', 'Price': '10.00'},
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Margaritas',
                  'Price': '6.00'
                },
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Shots',
                  'Price': '3.00'
                },
                {
                  'Bar': 'O\'Bannon\'s',
                  'Drinks': 'Guinness, Irish Tea, Car Bombs 8-2am',
                  'Price': '4.00'
                },
                {
                  'Bar': 'Good Bull Icehouse',
                  'Drinks': 'Caprifun',
                  'Price': '5.00'
                },
                {
                  'Bar': 'Good Bull Icehouse',
                  'Drinks': 'Lone Star',
                  'Price': '3.50'
                },
                {
                  'Bar': 'Good Bull Icehouse',
                  'Drinks': 'Starfucker',
                  'Price': '3.50'
                },
                {'Bar': 'The Tap', 'Drinks': 'Piano Bar', 'Price': 'X.XX'},
              ];
            } else if (txt == 'Saturday') {
              _books = [
                {
                  'Bar': 'Dry Bean',
                  'Drinks': 'Specialty Shots',
                  'Price': '4.00'
                },
                {
                  'Bar': 'O\'Bannon\'s',
                  'Drinks': 'BWD Beers',
                  'Price': '2.00 off'
                },
                {
                  'Bar': 'O\'Bannon\'s',
                  'Drinks': 'Mint Chocolate Chip Shots',
                  'Price': '4.00'
                },
              ];
            } else if (txt == 'Sunday') {
              _books = [
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'Draft Beer',
                  'Price': '2.75'
                },
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'Cold Shots',
                  'Price': '3.00'
                },
                {
                  'Bar': 'The Spot',
                  'Drinks': 'Dos Equis & Michelob Ultra',
                  'Price': '2.50'
                },
                {'Bar': 'The Spot', 'Drinks': 'Bloody Marry', 'Price': '4.00'},
                {
                  'Bar': 'The Spot',
                  'Drinks': 'Mimosa Pitcher',
                  'Price': '12.00'
                },
                {'Bar': 'Dixie Chicken', 'Drinks': 'Pitchers', 'Price': 'X.XX'},
                {
                  'Bar': 'Hurricane Harry\'s',
                  'Drinks': 'Wells',
                  'Price': '2.00'
                },
                {
                  'Bar': 'Hurricane Harry\'s',
                  'Drinks': 'Domestics',
                  'Price': '3.00'
                },
              ];
            } else if (txt == 'Happy Hour') {
              _books = [
                {'Bar': 'Chimy\'s', 'Drinks': 'Drafts 4-7pm', 'Price': '2.00'},
                {'Bar': 'Chimy\'s', 'Drinks': 'Doubles 4-7pm', 'Price': '4.00'},
                {
                  'Bar': 'Chimy\'s',
                  'Drinks': 'House Margarita 4-7pm',
                  'Price': '5.00'
                },
                {
                  'Bar': 'Rebel Draft House',
                  'Drinks': 'Domestic Buckets',
                  'Price': '12.00'
                },
                {
                  'Bar': 'Rough Draught',
                  'Drinks': 'Craft Beer Pints 4-8',
                  'Price': '3.50'
                },
                {'Bar': 'Logies', 'Drinks': 'Montucky', 'Price': '3.00'},
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Rumble Shots',
                  'Price': '4.00'
                },
                {
                  'Bar': 'Commander\'s Cove',
                  'Drinks': 'Pickle Shots',
                  'Price': '3.00'
                },
                {'Bar': 'Dixie Chicken', 'Drinks': '4-8??', 'Price': 'X.XX'},
              ];
            }
          });
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
          dayQuestion,
          AspectRatio(
            aspectRatio: 3.0,
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
