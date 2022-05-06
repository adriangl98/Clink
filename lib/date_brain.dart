class DateBrain {
  var currentday = DateTime.now().weekday;
  late String weekDay;
  
  currentDate() {
    if (currentday == 1) {
      weekDay = 'Monday';
    } else if (currentday == 2) {
      weekDay = 'Tuesday';
    } else if (currentday == 3) {
      weekDay = 'Wednesday';
    } else if (currentday == 4) {
      weekDay = 'Thursday';
    } else if (currentday == 5) {
      weekDay = 'Friday';
    } else if (currentday == 6) {
      weekDay = 'Saturday';
    } else if (currentday == 7) {
      weekDay = 'Sunday';
    }
    return weekDay;
  }


}
