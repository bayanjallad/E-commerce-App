
import 'package:flutter/material.dart';
import '../../config/responsive.dart';

//One Case

EdgeInsetsGeometry onlyTopPadding(topPadding) {
  return EdgeInsets.only(top: screenHight * topPadding);
}

EdgeInsetsGeometry onlyButtomPadding(buttomPadding) {
  return EdgeInsets.only(bottom: screenHight * buttomPadding);
}

EdgeInsetsGeometry onlyLeftPadding(leftPadding) {
  return EdgeInsets.only(left: screenWidth * leftPadding);
}

EdgeInsetsGeometry onlyRightPadding(rightPadding) {
  return EdgeInsets.only(right: screenWidth * rightPadding);
}

//tow Cases

EdgeInsetsGeometry topAndButtomPadding(topPadding, buttomPadding) {
  return EdgeInsets.only(
      top: screenHight * topPadding, bottom: screenHight * buttomPadding);
}

EdgeInsetsGeometry topAndleftPadding(topPadding, leftPadding) {
  return EdgeInsets.only(
      top: screenHight * topPadding, left:screenWidth * leftPadding);
}

EdgeInsetsGeometry topAndRightPadding(topPadding, rightPadding) {
  return EdgeInsets.only(
      top: screenHight * topPadding, right: screenWidth * rightPadding);
}

EdgeInsetsGeometry leftAndButtomPadding(leftpadding, buttomPadding) {
  return EdgeInsets.only(
      left: screenWidth * leftpadding, bottom: screenHight * buttomPadding);
}

EdgeInsetsGeometry leftAndRightPadding(leftpadding, rightPadding) {
  return EdgeInsets.only(
      left: screenWidth * leftpadding, right:screenWidth * rightPadding);
}

EdgeInsetsGeometry buttomAndRightPadding(buttompadding, rightPadding) {
  return EdgeInsets.only(
      bottom: screenHight * buttompadding, right: screenWidth* rightPadding);
}

//Three Cases

EdgeInsetsGeometry topAndButtomAndLeftPadding(
    topPadding, buttomPadding, leftPadding) {
  return EdgeInsets.only(
      top: screenHight * topPadding,
      bottom: screenHight * buttomPadding,
      left:screenWidth * leftPadding);
}

EdgeInsetsGeometry topAndButtomAndRightPadding(
    topPadding, buttomPadding, rightPadding) {
  return EdgeInsets.only(
      top: screenHight * topPadding,
      bottom: screenHight * buttomPadding,
      right:screenWidth* rightPadding);
}

EdgeInsetsGeometry topAndLeftAndRightPadding(
    topPadding, leftPadding, rightPadding) {
  return EdgeInsets.only(
      top: screenHight * topPadding,
      left: screenWidth * leftPadding,
      right:screenWidth * rightPadding);
}

EdgeInsetsGeometry buttomAndLeftAndRightPadding(
    buttomPadding, leftPadding, rightPadding) {
  return EdgeInsets.only(
      bottom: screenHight * buttomPadding,
      left: screenWidth * leftPadding,
      right: screenWidth * rightPadding);
}

//four Cases 

EdgeInsetsGeometry topAndButtomAndLeftAndRightPadding(
   topPadding,  buttomPadding, leftPadding, rightPadding) {
  return EdgeInsets.only(
      top: screenHight * topPadding,
      bottom: screenHight * buttomPadding,
      left: screenWidth * leftPadding,
      right: screenWidth * rightPadding);
}