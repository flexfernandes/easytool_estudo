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

Future<bool> findSelectProduct(
  String textFind,
) async {
  QuerySnapshot query_prod = await FirebaseFirestore.instance
      .collection("prod_product_parameter")
      .where("par_code", isEqualTo: textFind)
      .get();

  if (query_prod.docs.isEmpty) {
    query_prod = await FirebaseFirestore.instance
        .collection("prod_product_parameter")
        .where("par_productreference", isEqualTo: textFind)
        .get();
  }

  if (query_prod.docs.length > 0) {
    var products = query_prod.docs[0];
    await FirebaseFirestore.instance
        .collection("prod_product_parameter")
        .doc(products.reference.id)
        .update({
      "par_select": true,
      "par_order": 0,
    });
    return true;
  } else
    return false;
}
