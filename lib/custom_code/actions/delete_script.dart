// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';

// Begin custom action code
final _fireStore = FirebaseFirestore.instance;
Future<bool> deleteScript(int controler) async {
  var _order = 1;
  var _path_prod_tempo;

  // Delete (prod_tempo_script)
  QuerySnapshot prod_tempo_script = await _fireStore
      .collection("prod_tempo_script")
      .where('controler', isEqualTo: controler)
      .get();
  for (int i = 0; i < prod_tempo_script.docs.length; i++) {
    var _prod_tempo_script = prod_tempo_script.docs[i];
    _prod_tempo_script.reference.delete();
  }

  // Delete (prod_tempo)
  QuerySnapshot prod_tempo = await _fireStore
      .collection("prod_tempo")
      .where('controler', isEqualTo: controler)
      .get();
  for (int i = 0; i < prod_tempo.docs.length; i++) {
    var _prod_tempo = prod_tempo.docs[i];
    _prod_tempo.reference.delete();
  }

  return true;
}
