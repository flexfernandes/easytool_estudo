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

Future<String> updateContext(
  DocumentReference proparID,
  String up_option_check_01,
  String up_option_check_02,
  String up_option_check_03,
  String up_ref_text_field_01_01,
  String up_ref_text_field_02_01,
  String up_ref_text_field_03_01,
  String up_option_check_04,
  String up_option_check_05,
  String up_ref_text_field_04_01,
  String up_ref_text_field_05_01,
  String up_option_check_06,
  String up_option_check_07,
  String up_option_check_08,
  String up_option_check_09,
  String up_option_check_10,
  String up_option_check_11,
  String up_option_check_12,
  String up_ref_text_field_06_01,
  String up_ref_text_field_07_01,
  String up_ref_text_field_08_01,
  String up_ref_text_field_09_01,
  String up_ref_text_field_10_01,
  String up_ref_text_field_11_01,
  String up_ref_text_field_12_01,
  String up_option_check_13,
  String up_option_check_14,
  String up_option_check_15,
  String up_option_check_16,
  String up_option_check_17,
  String up_option_check_18,
  String up_option_check_19,
  String up_option_check_20,
  String up_option_check_21,
  String up_option_check_22,
  String up_option_check_23,
  String up_option_check_24,
  String up_option_check_25,
  String up_ref_text_field_13_01,
  String up_ref_text_field_14_01,
  String up_ref_text_field_15_01,
  String up_ref_text_field_16_01,
  String up_ref_text_field_17_01,
  String up_ref_text_field_18_01,
  String up_ref_text_field_19_01,
  String up_ref_text_field_20_01,
  String up_ref_text_field_21_01,
  String up_ref_text_field_22_01,
  String up_ref_text_field_23_01,
  String up_ref_text_field_24_01,
  String up_ref_text_field_25_01,
) async {
  try {
    up_option_check_01 = up_option_check_01 ?? "";
    up_option_check_02 = up_option_check_02 ?? "";
    up_option_check_03 = up_option_check_03 ?? "";
    up_option_check_04 = up_option_check_04 ?? "";
    up_option_check_05 = up_option_check_05 ?? "";
    up_option_check_06 = up_option_check_06 ?? "";
    up_option_check_07 = up_option_check_07 ?? "";
    up_option_check_08 = up_option_check_08 ?? "";
    up_option_check_09 = up_option_check_09 ?? "";
    up_option_check_10 = up_option_check_10 ?? "";
    up_option_check_11 = up_option_check_11 ?? "";
    up_option_check_12 = up_option_check_12 ?? "";
    up_option_check_13 = up_option_check_13 ?? "";
    up_option_check_14 = up_option_check_14 ?? "";
    up_option_check_15 = up_option_check_15 ?? "";
    up_option_check_16 = up_option_check_16 ?? "";
    up_option_check_17 = up_option_check_17 ?? "";
    up_option_check_18 = up_option_check_18 ?? "";
    up_option_check_19 = up_option_check_19 ?? "";
    up_option_check_20 = up_option_check_20 ?? "";
    up_option_check_21 = up_option_check_21 ?? "";
    up_option_check_22 = up_option_check_22 ?? "";
    up_option_check_23 = up_option_check_23 ?? "";
    up_option_check_24 = up_option_check_24 ?? "";
    up_option_check_25 = up_option_check_25 ?? "";

    var menerro = "";
    var script;

    // Busca informaçoes dos Parâmetros dos Produtos
    await FirebaseFirestore.instance
        .collection('prod_product_parameter')
        .doc(proparID.id)
        .get()
        .then((doc) {
      script = doc.data()['par_context'];
    });

    var pScript = json.decode(script);

    menerro = menerro +
        (up_option_check_01.isEmpty
            ? pScript["list_reference"][0]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_02.isEmpty
            ? pScript["list_reference"][1]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_03.isEmpty
            ? pScript["list_reference"][2]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_04.isEmpty
            ? pScript["list_reference"][3]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_05.isEmpty
            ? pScript["list_reference"][4]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_06.isEmpty
            ? pScript["list_reference"][5]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_07.isEmpty
            ? pScript["list_reference"][6]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_08.isEmpty
            ? pScript["list_reference"][7]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_09.isEmpty
            ? pScript["list_reference"][8]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_10.isEmpty
            ? pScript["list_reference"][9]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_11.isEmpty
            ? pScript["list_reference"][10]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_12.isEmpty
            ? pScript["list_reference"][11]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_13.isEmpty
            ? pScript["list_reference"][12]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_14.isEmpty
            ? pScript["list_reference"][13]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_15.isEmpty
            ? pScript["list_reference"][14]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_16.isEmpty
            ? pScript["list_reference"][15]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_17.isEmpty
            ? pScript["list_reference"][16]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_18.isEmpty
            ? pScript["list_reference"][17]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_19.isEmpty
            ? pScript["list_reference"][18]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_20.isEmpty
            ? pScript["list_reference"][19]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_21.isEmpty
            ? pScript["list_reference"][20]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_22.isEmpty
            ? pScript["list_reference"][21]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_23.isEmpty
            ? pScript["list_reference"][22]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_24.isEmpty
            ? pScript["list_reference"][23]["ref_description"] + "--"
            : "");
    menerro = menerro +
        (up_option_check_25.isEmpty
            ? pScript["list_reference"][24]["ref_description"] + "--"
            : "");

    menerro = menerro.replaceAll("::--", "");

    if (menerro.isNotEmpty) {
      return menerro;
    }

    pScript["list_update"][0]["up_option_check"] = up_option_check_01 ?? "::";
    pScript["list_update"][1]["up_option_check"] = up_option_check_02 ?? "::";
    pScript["list_update"][2]["up_option_check"] = up_option_check_03 ?? "::";
    pScript["list_update"][3]["up_option_check"] = up_option_check_04 ?? "::";
    pScript["list_update"][4]["up_option_check"] = up_option_check_05 ?? "::";
    pScript["list_update"][5]["up_option_check"] = up_option_check_06 ?? "::";
    pScript["list_update"][6]["up_option_check"] = up_option_check_07 ?? "::";
    pScript["list_update"][7]["up_option_check"] = up_option_check_08 ?? "::";
    pScript["list_update"][8]["up_option_check"] = up_option_check_09 ?? "::";
    pScript["list_update"][9]["up_option_check"] = up_option_check_10 ?? "::";
    pScript["list_update"][10]["up_option_check"] = up_option_check_11 ?? "::";
    pScript["list_update"][11]["up_option_check"] = up_option_check_12 ?? "::";

    pScript["list_update"][12]["up_option_check"] = up_option_check_13 ?? "::";
    pScript["list_update"][13]["up_option_check"] = up_option_check_14 ?? "::";
    pScript["list_update"][14]["up_option_check"] = up_option_check_15 ?? "::";
    pScript["list_update"][15]["up_option_check"] = up_option_check_16 ?? "::";
    pScript["list_update"][16]["up_option_check"] = up_option_check_17 ?? "::";
    pScript["list_update"][17]["up_option_check"] = up_option_check_18 ?? "::";
    pScript["list_update"][18]["up_option_check"] = up_option_check_19 ?? "::";
    pScript["list_update"][19]["up_option_check"] = up_option_check_20 ?? "::";
    pScript["list_update"][20]["up_option_check"] = up_option_check_21 ?? "::";
    pScript["list_update"][21]["up_option_check"] = up_option_check_22 ?? "::";
    pScript["list_update"][22]["up_option_check"] = up_option_check_23 ?? "::";
    pScript["list_update"][23]["up_option_check"] = up_option_check_24 ?? "::";
    pScript["list_update"][24]["up_option_check"] = up_option_check_25 ?? "::";

    pScript["list_update"][0]["up_ref_text_field1"] =
        up_ref_text_field_01_01 ?? "";
    pScript["list_update"][1]["up_ref_text_field1"] =
        up_ref_text_field_02_01 ?? "";
    pScript["list_update"][2]["up_ref_text_field1"] =
        up_ref_text_field_03_01 ?? "";
    pScript["list_update"][3]["up_ref_text_field1"] =
        up_ref_text_field_04_01 ?? "";
    pScript["list_update"][4]["up_ref_text_field1"] =
        up_ref_text_field_05_01 ?? "";
    pScript["list_update"][5]["up_ref_text_field1"] =
        up_ref_text_field_06_01 ?? "";
    pScript["list_update"][6]["up_ref_text_field1"] =
        up_ref_text_field_07_01 ?? "";
    pScript["list_update"][7]["up_ref_text_field1"] =
        up_ref_text_field_08_01 ?? "";
    pScript["list_update"][8]["up_ref_text_field1"] =
        up_ref_text_field_09_01 ?? "";
    pScript["list_update"][9]["up_ref_text_field1"] =
        up_ref_text_field_10_01 ?? "";
    pScript["list_update"][10]["up_ref_text_field1"] =
        up_ref_text_field_11_01 ?? "";
    pScript["list_update"][11]["up_ref_text_field1"] =
        up_ref_text_field_12_01 ?? "";

    pScript["list_update"][12]["up_ref_text_field1"] =
        up_ref_text_field_13_01 ?? "";
    pScript["list_update"][13]["up_ref_text_field1"] =
        up_ref_text_field_14_01 ?? "";
    pScript["list_update"][14]["up_ref_text_field1"] =
        up_ref_text_field_15_01 ?? "";
    pScript["list_update"][15]["up_ref_text_field1"] =
        up_ref_text_field_16_01 ?? "";
    pScript["list_update"][16]["up_ref_text_field1"] =
        up_ref_text_field_17_01 ?? "";
    pScript["list_update"][17]["up_ref_text_field1"] =
        up_ref_text_field_18_01 ?? "";
    pScript["list_update"][18]["up_ref_text_field1"] =
        up_ref_text_field_19_01 ?? "";
    pScript["list_update"][19]["up_ref_text_field1"] =
        up_ref_text_field_20_01 ?? "";
    pScript["list_update"][20]["up_ref_text_field1"] =
        up_ref_text_field_21_01 ?? "";
    pScript["list_update"][21]["up_ref_text_field1"] =
        up_ref_text_field_22_01 ?? "";
    pScript["list_update"][22]["up_ref_text_field1"] =
        up_ref_text_field_23_01 ?? "";
    pScript["list_update"][23]["up_ref_text_field1"] =
        up_ref_text_field_24_01 ?? "";
    pScript["list_update"][24]["up_ref_text_field1"] =
        up_ref_text_field_25_01 ?? "";

    await FirebaseFirestore.instance
        .collection("prod_product_parameter")
        .doc(proparID.id)
        .update({"par_context": json.encode(pScript)});

    return "";
  } catch (error) {
    FirebaseFirestore.instance.collection("prod_error").add({
      "error": error,
      "date": DateTime.now(),
    });
  }
}
