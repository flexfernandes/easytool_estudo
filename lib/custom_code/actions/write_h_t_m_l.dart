// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

Future<String> writeHTML(DocumentReference proparID) async {
  // Add your function code here!

  // Busca informaçoes do Produtos
  await FirebaseFirestore.instance
      .collection('prod_product_parameter')
      .doc(proparID.id)
      .get()
      .then((doc) {
    firebase_storage.Reference ref = firebase_storage.FirebaseStorage.instance
        .ref()
        .child('playhtml')
        .child('/product.html');

    //   var downloadedData = ref.getData();

    var ini =
        '<!DOCTYPE html> <html> <head> <meta charset="UTF-8"/> <title>Document</title> </head> <body>';
    var fim = '</body> </html>';

    String putStringText = ini + doc.data()['par_html'].toString() + fim;

    ref.putString(putStringText,
        metadata: firebase_storage.SettableMetadata(contentLanguage: 'en'));
  });
}
