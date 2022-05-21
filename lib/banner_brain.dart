import 'date_brain.dart';
import 'package:flutter/material.dart';

DateBrain dateBrain = DateBrain();

class BannerBrain {
  dayBanner(String txt) {
    dynamic banner = Center(
      child: Text(
        txt,
        style: const TextStyle(
          color: Color.fromRGBO(49, 49, 45, 1),
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
    return banner;
  }
}
