import 'package:flutter/widgets.dart';
import 'package:task_app/src/core/values/colors.dart';
import 'package:task_app/src/core/values/icons.dart';

List<Icon> getIcons() => const [
      Icon(
        IconData(personIcon, fontFamily: 'MaterialIcons'),
        color: purple,
      ),
      Icon(
        IconData(workIcon, fontFamily: 'MaterialIcons'),
        color: pink,
      ),
      Icon(
        IconData(movieIcon, fontFamily: 'MaterialIcons'),
        color: green,
      ),
      Icon(
        IconData(sportIcon, fontFamily: 'MaterialIcons'),
        color: yellow,
      ),
      Icon(
        IconData(travelIcon, fontFamily: 'MaterialIcons'),
        color: deepPink,
      ),
      Icon(
        IconData(shopIcon, fontFamily: 'MaterialIcons'),
        color: lightBlue,
      ),
    ];
