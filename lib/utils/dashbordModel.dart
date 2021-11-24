import 'package:car_app/model/car_visit_model.dart';
import 'package:car_app/model/profile_model.dart';
import 'package:car_app/model/visit_details_model.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DashBordModel {
  // ignore: unused_field\
  static CustomerData? customerData;
  static AllVechiles? allVechiles;
  static CarVisitModel? carVisitModel;
  static VisitDetailsModel? vdm;

// ignore: unused_element
  static showMessageError(msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

// ignore: unused_element
  static showMessageSuccess(msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green[700],
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
