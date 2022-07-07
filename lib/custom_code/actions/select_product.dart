// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:convert';
import 'dart:math' as math;

Future<bool> selectProduct(
  DocumentReference proparID,
  bool select,
) async {
  await FirebaseFirestore.instance
      .collection("prod_product_parameter")
      .doc(proparID.id)
      .update(
          {"par_select": select ? false : true, "par_order": select ? 0 : 1});
}
