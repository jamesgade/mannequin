import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

bool listContainsItem(
  List<String> list,
  String item,
) {
  if (list.contains(item)) {
    return true;
  } else {
    return false;
  }
}

int lengthOfDocumentsArray(List<DocumentReference>? array) {
  if (array == null || array.length == 0) {
    return 0;
  } else {
    return array.length;
  }
}
