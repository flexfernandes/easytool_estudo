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

Future<bool> selectProductImage(
  DocumentReference proparImageID,
  bool status,
  String field,
  DocumentReference proparID,
  String urlImage,
) async {
  // Busca informaçoes do Produtos
  await FirebaseFirestore.instance
      .collection('prod_product_parameter')
      .doc(proparID.id)
      .get()
      .then((doc) {
    if ((field == "img_frontcover") &&
        (status == false) &&
        (doc.data()['par_img'].toString().isNotEmpty)) {
      field = "";
      return false;
    }
  });

  if (field == "img_active") {
    if (status) {
      await FirebaseFirestore.instance
          .collection("prod_product_parameter")
          .doc(proparID.id)
          .update({"par_img": ""});

      await FirebaseFirestore.instance
          .collection("prod_product_parameter")
          .doc(proparID.id)
          .collection("prod_product_image")
          .doc(proparImageID.id)
          .update({
        "img_active": false,
        "img_frontcover": false,
        "img_order": 99,
        "img_create": DateTime.now()
      });
    } else {
      await FirebaseFirestore.instance
          .collection("prod_product_parameter")
          .doc(proparID.id)
          .collection("prod_product_image")
          .doc(proparImageID.id)
          .update({
        "img_active": true,
        "img_frontcover": false,
        "img_order": 50,
        "img_create": DateTime.now()
      });
    }
  }

  if (field == "img_frontcover") {
    await FirebaseFirestore.instance
        .collection("prod_product_parameter")
        .doc(proparID.id)
        .update({
      "par_img": status ? "" : urlImage,
    });

    if (status) {
      await FirebaseFirestore.instance
          .collection("prod_product_parameter")
          .doc(proparID.id)
          .collection("prod_product_image")
          .doc(proparImageID.id)
          .update({
        "img_active": true,
        "img_frontcover": false,
        "img_order": 50,
        "img_create": DateTime.now()
      });
    } else {
      await FirebaseFirestore.instance
          .collection("prod_product_parameter")
          .doc(proparID.id)
          .collection("prod_product_image")
          .doc(proparImageID.id)
          .update({
        "img_active": true,
        "img_frontcover": true,
        "img_order": 10,
        "img_create": DateTime.now()
      });
    }
  }

  return true;
}
