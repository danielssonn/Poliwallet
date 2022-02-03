/// Created by   : Shyne Mari
/// Date Created : 2/1/21
/// Remarks      : Constant variables for the app theme

import 'package:flutter/material.dart';

const primaryColor = Color(0xFF2D83E8);
const secondaryColor = Color(0xFFFFE36C);
const primaryTextColor = Color(0xFF1F5CB0);

const iconBackgroundColor = Color(0xFF4EAAFF);
const subtextColor = Color(0xFF1F5CB0);

const lightBlueColor = Color(0xFFECF2FF);
const blue120 = Color(0xFF1F5CB0);

const gradientColorStart = Color(0xFF69ADF4);
const gradientColorEnd = Color(0xFF2D83E8);

const textFieldFillColor = Color(0xFFF7F9FF);

const hintColor = Color(0xFF8E8E8E);

const avatarColor = Color(0xFFF7F9FF);
// Text controls#

const textHeaderStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.black,
  fontWeight: FontWeight.bold,
  height: 2.5,
);

const textContentStyle = TextStyle(
  fontSize: 16.0,
  color: Colors.black,
  height: 1.15,
);

const inputDecoration = InputDecoration(
  filled: true,
  fillColor: textFieldFillColor,
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide: BorderSide(
      width: 0,
      style: BorderStyle.none,
    ),
  ),
  hintText: 'Enter your seed phrase here',
  hintStyle: TextStyle(fontSize: 14, color: hintColor),
);

const inputLineDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.transparent,
  border: UnderlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
    borderSide:
        BorderSide(width: 2, style: BorderStyle.solid, color: hintColor),
  ),
  hintText: 'Enter your seed phrase here',
  hintStyle: TextStyle(fontSize: 14, color: hintColor),
);

//69ADF4
//2D83E8
