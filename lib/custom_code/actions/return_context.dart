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

Future<dynamic> returnContext(
  DocumentReference proparID,
) async {
  try {
    var _return;

    // Busca informaçoes dos Parâmetros dos Produtos
    await FirebaseFirestore.instance
        .collection('prod_product_parameter')
        .doc(proparID.id)
        .get()
        .then((doc) {
      _return = doc.data()['par_context'];
    });

    return (json.decode(_return));
  } catch (error) {
    FirebaseFirestore.instance.collection("prod_error").add({
      "error": error,
      "date": DateTime.now(),
    });
  }
}
