// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'package:flutter/services.dart';

Future copyClipBoard(String textToClipBoard) async {
  // Add your function code here!
  await Clipboard.setData(ClipboardData(text: textToClipBoard));
}
