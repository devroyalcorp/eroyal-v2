import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primary = Color(0xFF313352);
const secondary = Color(0xFFFA8C26);
const white = Color(0xFFFFFFFF);
const black = Color.fromRGBO(0, 0, 0, 1);
const grey = Color(0xFFD9D9D9);
const greyHint = Color.fromRGBO(191, 186, 186, 1);
const greyIcon = Color.fromRGBO(30, 30, 30, .4);
const borderColor = Color.fromRGBO(217, 217, 217, 0.192);
const red = Color.fromRGBO(236, 66, 96, 1);
const greyText = Color.fromRGBO(99, 98, 98, 1);
const green = Color(0xFF369B43);
const shadowColor = Color.fromRGBO(224, 224, 236, .3);
const red10 = Color.fromRGBO(236, 66, 96, .1);
const green98 = Color.fromRGBO(54, 155, 67, .98);
const green12 = Color.fromRGBO(54, 155, 67, .12);

const BoxShadow shadowSmooth = BoxShadow(
  color: Color.fromRGBO(186, 190, 220, .15),
  blurRadius: 5,
  offset: Offset(0, 2),
);

class EFonts {
  static final _weightList = <FontWeight>[
    FontWeight.w100,
    FontWeight.w200,
    FontWeight.w300,
    FontWeight.w400,
    FontWeight.w500,
    FontWeight.w600,
    FontWeight.w700,
    FontWeight.w800,
    FontWeight.w900,
  ];

  static TextStyle montserrat(int weight, double size,
      [Color? color, TextDecoration? decoration]) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        fontWeight: _weightList[weight - 1],
        fontSize: size,
        color: color,
        decoration: decoration,
      ),
    );
  }
}
