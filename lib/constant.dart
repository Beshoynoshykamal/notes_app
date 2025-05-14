import 'dart:math';

import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF62Fcd7);
const kNotesBox = 'notes_box';



 final Random random = Random();

 List<Color>kColors=List<Color>.generate(10, (index) {
    return Color.fromARGB(
      255, // fully opaque
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  });


