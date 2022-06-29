// ignore_for_file: unused_import

import 'package:flutter/material.dart';


class Phone{
  String label;
  String imageUrl;
  int amount;
  List<Details> details;

  Phone(
    this.label,
    this.imageUrl,
    this.amount,
    this.details
  );

  static List<Phone> samples = [
    Phone(
      'Phone: Iphone 6', 
      'lib/images/ben-kolde-cpLsWmMEa1Q-unsplash - Copy.jpg',
      1,
      [
        Details(40000, 'An old Iphone model, considered a little lower than mid range nowadays.', 'IOS', 400),
      ]
    ),
    Phone(
      'Phone: Iphone 11', 
      'lib/images/walling-52H5Nfi5WiE-unsplash.jpg',
      1,
      [
        Details(300000, 'A newer Iphone model, considered higher than mid range phones nowadays.', 'IOS', 10),
      ]
    ),
    Phone(
      'Phone: Iphone xr', 
      'lib/images/ben-kolde-xdLXPic3Wfk-unsplash - Copy.jpg',
      1,
      [
        Details(250000, 'A new Iphone model, considered a little higher than mid range nowadays.', 'IOS', 200),
      ]
    ),
    Phone(
      'Phone: Bunch of androids', 
      'lib/images/obi-onyeador-2JrpkyZ2ruQ-unsplash.jpg',
      1,
      [
        Details(40000, 'Different models of androids and a tab, ranges from low to mid(upper) range.', 'Android', 400),
      ]
    ),
    Phone(
      'Phone: Retro corded phone', 
      'lib/images/quino-al-8gWEAAXJjtI-unsplash - Copy.jpg',
      1,
      [
        Details(1000000, 'An old phone model, an antique worth a lot.', 'Retro', 600),
      ]
    ),
    Phone(
      'Phone: Nokia and Iphone 13', 
      'lib/images/screen-post-WM7RomoFmy0-unsplash.jpg',
      1,
      [
        Details(900000, 'Both high range phone models.', 'IOS/Android', 400),
      ]
    ),
  ];
}

class Details {
  int phonePrice;
  String note;
  String modelType;
  dynamic phoneCost;

  Details(
    this.phonePrice,
    this.note,
    this.modelType,
    this.phoneCost
  );
}