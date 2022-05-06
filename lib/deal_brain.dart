import 'date_brain.dart';

DateBrain dateBrain = DateBrain();

class DealBrain {
  late List<Map> _books = [];

  mondayDeals() {
    _books = [
      {
        'Bar': 'Rough Draught',
        'Drinks': 'Mules and Mint Juleps',
        'Price': '5.00'
      },
      {'Bar': 'Dixie Chicken', 'Drinks': 'Chuggers', 'Price': '5.00'},
    ];
    return _books;
  }

  tuesdayDeals() {
    _books = [
      {
        'Bar': 'Chimy\'s',
        'Drinks': 'Dos Equis & Michelob Ultra',
        'Price': '2.00'
      },
      {'Bar': 'Chimy\'s', 'Drinks': 'Jose Cuervo Shots', 'Price': '3.00'},
      {'Bar': 'Rebel Draft House', 'Drinks': 'Teas', 'Price': '2.75'},
      {'Bar': 'Rough Draught', 'Drinks': 'All Whiskey', 'Price': '2.00 off'},
      {'Bar': 'Rough Draught', 'Drinks': 'All Beer', 'Price': '1.00 off'},
      {'Bar': 'The Spot', 'Drinks': 'Wells & Shots', 'Price': '2.50'},
      {'Bar': 'The Spot', 'Drinks': 'Bottles & Seltzers', 'Price': '2.50'},
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
      {'Bar': 'Commander\'s Cove', 'Drinks': 'Mexican Beer', 'Price': '3.50'},
      {'Bar': 'Dixie Chicken', 'Drinks': 'Pitchers', 'Price': 'X.XX'},
      {
        'Bar': 'Draconian Lounge',
        'Drinks': 'Shots, Double Wells, Domestics',
        'Price': '3.00'
      },
      {'Bar': 'Good Bull Icehouse', 'Drinks': 'Shot Deals', 'Price': 'X.XX'},
    ];
    return _books;
  }

  wednesdayDeals() {
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
      {'Bar': 'Commander\'s Cove', 'Drinks': 'Drag Night', 'Price': 'X.XX'},
      {'Bar': 'Dixie Chicken', 'Drinks': 'Whiskey', 'Price': 'Half off'},
      {
        'Bar': 'Draconian Lounge',
        'Drinks': 'Shots, Double Wells, Domestics',
        'Price': '3.00'
      },
      {'Bar': 'Good Bull Icehouse', 'Drinks': 'Shot Deals', 'Price': 'X.XX'},
    ];
    return _books;
  }

  thursdayDeals() {
    _books = [
      {'Bar': 'Rough Draught', 'Drinks': 'All Whiskey', 'Price': '2.00 off'},
      {'Bar': 'Rough Draught', 'Drinks': 'All Beer', 'Price': '1.00 off'},
      {'Bar': 'Duddleys Draw', 'Drinks': 'Well Shots', 'Price': '2.50'},
      {'Bar': 'Duddley\'s Draw', 'Drinks': 'Grandslams', 'Price': '6.00'},
      {'Bar': 'Dry Bean', 'Drinks': 'Specialty Shots', 'Price': '4.00'},
      {'Bar': 'Backyard', 'Drinks': 'Wells', 'Price': '1.50'},
      {
        'Bar': 'Cedar Lane',
        'Drinks': 'Beers and Wells 9-11pm',
        'Price': '1.00'
      },
      {'Bar': 'Paddock', 'Drinks': 'Long Island Iced Tea', 'Price': 'X.XX'},
      {'Bar': 'Commander\'s Cove', 'Drinks': 'Wells', 'Price': '2.00'},
      {'Bar': 'Commander\'s Cove', 'Drinks': 'Domestics', 'Price': '3.00'},
      {'Bar': 'O\'Bannon\'s', 'Drinks': 'Drafts', 'Price': 'Half off'},
      {'Bar': 'Dixie Chicken', 'Drinks': 'Pints', 'Price': '2.00'},
      {'Bar': 'Shiner Park', 'Drinks': 'Wells', 'Price': '1.00'},
      {'Bar': 'Shiner Park', 'Drinks': 'Champagne', 'Price': '5.00'},
      {'Bar': 'Hurricane Harry\'s', 'Drinks': 'Wells', 'Price': '2.00'},
      {'Bar': 'Hurricane Harry\'s', 'Drinks': 'Domestics', 'Price': '3.00'},
      {
        'Bar': 'Draconian Lounge',
        'Drinks': 'Shots, Double Wells, Domestics',
        'Price': '3.00'
      },
      {'Bar': 'Good Bull Icehouse', 'Drinks': 'Caprifun', 'Price': '5.00'},
      {'Bar': 'Good Bull Icehouse', 'Drinks': 'Pitchers', 'Price': '10.00'},
    ];
    return _books;
  }

  fridayDeals() {
    _books = [
      {'Bar': 'Dry Bean', 'Drinks': 'Specialty Shots', 'Price': '4.00'},
      {'Bar': 'Paddock', 'Drinks': 'Fishbowl', 'Price': '10.00'},
      {'Bar': 'Commander\'s Cove', 'Drinks': 'Margaritas', 'Price': '6.00'},
      {'Bar': 'Commander\'s Cove', 'Drinks': 'Shots', 'Price': '3.00'},
      {
        'Bar': 'O\'Bannon\'s',
        'Drinks': 'Guinness, Irish Tea, Car Bombs 8-2am',
        'Price': '4.00'
      },
      {'Bar': 'Good Bull Icehouse', 'Drinks': 'Caprifun', 'Price': '5.00'},
      {'Bar': 'Good Bull Icehouse', 'Drinks': 'Lone Star', 'Price': '3.50'},
      {'Bar': 'Good Bull Icehouse', 'Drinks': 'Starfucker', 'Price': '3.50'},
      {'Bar': 'The Tap', 'Drinks': 'Piano Bar', 'Price': 'X.XX'},
    ];
    return _books;
  }

  saturdayDeals() {
    _books = [
      {'Bar': 'Dry Bean', 'Drinks': 'Specialty Shots', 'Price': '4.00'},
      {'Bar': 'O\'Bannon\'s', 'Drinks': 'BWD Beers', 'Price': '2.00 off'},
      {
        'Bar': 'O\'Bannon\'s',
        'Drinks': 'Mint Chocolate Chip Shots',
        'Price': '4.00'
      },
    ];
    return _books;
  }

  sundayDeals() {
    _books = [
      {'Bar': 'Rough Draught', 'Drinks': 'Draft Beer', 'Price': '2.75'},
      {'Bar': 'Rough Draught', 'Drinks': 'Cold Shots', 'Price': '3.00'},
      {
        'Bar': 'The Spot',
        'Drinks': 'Dos Equis & Michelob Ultra',
        'Price': '2.50'
      },
      {'Bar': 'The Spot', 'Drinks': 'Bloody Marry', 'Price': '4.00'},
      {'Bar': 'The Spot', 'Drinks': 'Mimosa Pitcher', 'Price': '12.00'},
      {'Bar': 'Dixie Chicken', 'Drinks': 'Pitchers', 'Price': 'X.XX'},
      {'Bar': 'Hurricane Harry\'s', 'Drinks': 'Wells', 'Price': '2.00'},
      {'Bar': 'Hurricane Harry\'s', 'Drinks': 'Domestics', 'Price': '3.00'},
    ];
    return _books;
  }

  happyHourDeals() {
    _books = [
      {'Bar': 'Chimy\'s', 'Drinks': 'Drafts 4-7pm', 'Price': '2.00'},
      {'Bar': 'Chimy\'s', 'Drinks': 'Doubles 4-7pm', 'Price': '4.00'},
      {'Bar': 'Chimy\'s', 'Drinks': 'House Margarita 4-7pm', 'Price': '5.00'},
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
      {'Bar': 'Commander\'s Cove', 'Drinks': 'Rumble Shots', 'Price': '4.00'},
      {'Bar': 'Commander\'s Cove', 'Drinks': 'Pickle Shots', 'Price': '3.00'},
      {'Bar': 'Dixie Chicken', 'Drinks': '4-8??', 'Price': 'X.XX'},
    ];
    return _books;
  }

  initialDeal() {
    if (dateBrain.currentDate() == 'Monday') {
      return mondayDeals();
    } else if (dateBrain.currentDate() == 'Tuesday') {
      return tuesdayDeals();
    } else if (dateBrain.currentDate() == 'Wednesday') {
      return wednesdayDeals();
    } else if (dateBrain.currentDate() == 'Thursday') {
      return thursdayDeals();
    } else if (dateBrain.currentDate() == 'Friday') {
      return fridayDeals();
    } else if (dateBrain.currentDate() == 'Saturday') {
      return saturdayDeals();
    } else if (dateBrain.currentDate() == 'Sunday') {
      return sundayDeals();
    } else if (dateBrain.currentDate() == 'Happy Hour') {
      return happyHourDeals();
    }
  }
}
