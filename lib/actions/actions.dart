import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

Future deleteProduct(
  BuildContext context, {
  required DocumentReference? productReference,
  required String? imageURL,
}) async {
  await productReference!.delete();
  await FirebaseStorage.instance.refFromURL(imageURL!).delete();
}
