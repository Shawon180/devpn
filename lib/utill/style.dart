

import 'color_resources.dart';
import 'package:flutter/material.dart';
const gillSansMedium = TextStyle(
  fontFamily:"Gill Sans",
  fontWeight: FontWeight.w700,
);

const gillSansBold = TextStyle(
  fontFamily:"Gill Sans",
  fontWeight: FontWeight.bold,
);



InputDecoration kInputDecoration =  const InputDecoration(
  hintStyle: TextStyle(color: kSubSubTitleColor),
  prefixIconColor: kTitleColor,



  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
    borderSide: BorderSide(color: kBorderColorTextField, width: 1),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(8.0),
    ),
    borderSide: BorderSide(color: kBorderColorTextField, width: 1),
  ),
);
