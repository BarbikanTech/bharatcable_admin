import 'package:flutter/material.dart';

TextEditingController fromDate = TextEditingController();
TextEditingController toDate = TextEditingController();
TextEditingController search = TextEditingController();

List<DropdownMenuItem> customerList = [];
List<DropdownMenuItem> staffList = [];
List<DropdownMenuItem> orderTypeList = [];
List<DropdownMenuItem> promotionCodeList = [];
List<DropdownMenuItem> statusList = [];
String? customerID;
String? staffID;
String? orderTypeID;
String? filterPromotionCodeID;
String? statusID;
