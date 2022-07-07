// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:convert' show utf8;

Future<String> writeFILE(
  String textString,
  String fileExt,
  String nameFile,
) async {
  firebase_storage.Reference ref = await firebase_storage
      .FirebaseStorage.instance
      .ref()
      .child(fileExt)
      .child('/${nameFile}.${fileExt}');

  // obter os dados do arquivo atual em que você está:
  // Uint8List downloadedData  =  await ref.getData();
  // print(utf8.decode(downloadedData));

  var putStringText = textString;

  await ref.putString(putStringText,
      metadata: firebase_storage.SettableMetadata(contentLanguage: 'en'));

  //     firebase_storage.Reference ref2 = await firebase_storage.FirebaseStorage.instance
  //     .ref()
  //     .child(fileExt)
  //     .child('/${nameFile}.${fileExt}');

  return ref.getDownloadURL();
}
