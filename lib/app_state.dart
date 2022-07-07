import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  SharedPreferences prefs;

  String imageURLupload = '';

  int controler = 0;

  dynamic testeJSON;

  dynamic scriptJSON;

  String stringTempo = '';

  String camporadioteste = '';

  String stringVisibility = '::';

  String StringVisibilityOutro = 'OUTRO(A)';

  dynamic detailJSON;

  List<String> tempoList = [];

  bool boolTemp = false;

  bool filterSelectProduct = false;

  DocumentReference proparID;

  DocumentReference referenceStandard =
      FirebaseFirestore.instance.doc('/prod_standard/qJverXFUzJ0fKGrzwGLn');

  bool imageInsert = true;
}

LatLng _latLngFromString(String val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
