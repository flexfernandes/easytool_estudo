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

final _fireStore = FirebaseFirestore.instance;
Future<dynamic> createScript(
  DocumentReference scrID,
  DocumentReference proparID,
  int controler,
) async {
  try {
    var _order = 0;
    String par_code;
    String par_productreference;
    String par_context;
    String ref_description;
    String ref_title_field1;
    String ref_title_field2;
    String ref_title_field3;

    var list_scriptsorder = [];
    var list_reference = [];
    var list_update = [];

    var fields_list = [];

    // Busca informaçoes dos Parâmetros dos Produtos
    await FirebaseFirestore.instance
        .collection('prod_product_parameter')
        .doc(proparID.id)
        .get()
        .then((doc) {
      par_code = doc.data()['par_code'].toString();
      par_productreference = doc.data()['par_productreference'].toString();
      par_context = doc.data()['par_context'].toString();
    });

//  // Busca informaçoes do Script tipo: Cadastro de plafon - Cadastro de lampadas
//  await FirebaseFirestore.instance
//      .collection('prod_script')
//      .doc(scrID.id)
//      .get()
//     .then((doc) {
//         prod_palavraschave.add(doc.data()['scr_description_type'].toString());
//     });

    // Busca lista das refeRencia (relacionamentos)
    QuerySnapshot query_prod_script_reference = await _fireStore
        .collection("prod_script_reference")
        .where('scr_id', isEqualTo: scrID)
        .orderBy("scr_ref_classification")
        .get();

    // LOOP - LER TODOS SCRIPTS REFERENCIADOS A REFERENCIA DO PRODUTOS SELECIONADO
    for (int i = 0; i < query_prod_script_reference.docs.length; i++) {
      var prod_script_reference = query_prod_script_reference.docs[i];

      // Busca Informacoes da referencia em especifico : Tipo de montagem - Tipo de Produto - Marca
      await FirebaseFirestore.instance
          .collection('prod_referece')
          .doc(prod_script_reference.get("ref_id").id)
          .get()
          .then((doc) {
        ref_description = doc.data()['ref_description'] ?? "";
        ref_title_field1 = doc.data()['ref_title_field1'] ?? "";
        ref_title_field2 = doc.data()['ref_title_field2'] ?? "";
        ref_title_field3 = doc.data()['ref_title_field3'] ?? "";
      });

      // Busca lista das classificacoes ligadas a referencia
      QuerySnapshot query_prod_classification = await _fireStore
          .collection("prod_classification")
          .where('ref_id', isEqualTo: prod_script_reference.get("ref_id"))
          .orderBy("cla_classification")
          .get();

      _order++;

      // FAZ INCLUSÃO DAS REFERÊNCIAS
      var pReference = prodReference(
        _order,
        prod_script_reference.reference.toString(),
        ref_description,
        ref_title_field1,
        ref_title_field2,
        ref_title_field3,
      );

      list_reference.add(pReference);

      // FAZ INCLUSÃO CAMPOS UPDATE
      var pUpdate = prodUpdate(
          _order,
          prod_script_reference.get("ref_id").toString(),
          prod_script_reference.reference.toString(),
          "",
          "",
          "",
          "");

      list_update.add(pUpdate);

      var list_scripts = [];

      var fields_temp = [];

      // LOOP - LER TODAS AS CLASSIFICACOES
      for (int ii = 0; ii < query_prod_classification.docs.length; ii++) {
        var prod_classification = query_prod_classification.docs[ii];

        var pClassification = prodClassification(
            prod_classification.get("cla_description").toString(),
            ii,
            prod_classification.get("ref_id").toString(),
            prod_classification.id.toString());

        list_scripts.add(pClassification);

        fields_temp.add(prod_classification.get("cla_description").toString());
      }

      // COMPLEMENTAR LISTA OUTRO(A)
      var pClassification = prodClassification(
          "OUTRO(A)", query_prod_classification.docs.length++, "", "");

      fields_temp.add("OUTRO(A)");
      fields_list.add(fields_temp);

      list_scripts.add(pClassification);

      var pClassificationOrder = prodClassificationOrder(_order, list_scripts);

      list_scriptsorder.add(pClassificationOrder);
    }

    // Inclui Registros em branco ****************************************

    var pClassification0 = prodClassification("::", 0, "", "");

    var pClassification1 = prodClassification("::", 1, "", "");

    var list_scripts = [];
    list_scripts.add(pClassification0);
    list_scripts.add(pClassification1);

    var _ii = _order + 1;

    var fields_temp = [];
    fields_temp.add("::");
    fields_temp.add("..");

    for (int ii = _ii; ii <= 25; ii++) {
      var pReference = prodReference(
        ii,
        "",
        "::",
        "::",
        "",
        "",
      );

      var pUpdate = prodUpdate(ii, "", "", "::", "", "", "");

      fields_list.add(fields_temp);

      var pClassificationOrder = prodClassificationOrder(ii, list_scripts);
      list_scriptsorder.add(pClassificationOrder);

      list_reference.add(pReference);
      list_update.add(pUpdate);
    }

    var pScript = prodScript(
        scrID.id.toString(),
        proparID.id.toString(),
        par_code,
        par_productreference,
        list_reference,
        list_scriptsorder,
        list_update);

    // Grava context (prod_product_parameter)

    await FirebaseFirestore.instance
        .collection("prod_product_parameter")
        .doc(proparID.id)
        .update({
      "par_context": json.encode(pScript),
      "par_sel01": fields_list[0],
      "par_sel02": fields_list[1],
      "par_sel03": fields_list[2],
      "par_sel04": fields_list[3],
      "par_sel05": fields_list[4],
      "par_sel06": fields_list[5],
      "par_sel07": fields_list[6],
      "par_sel08": fields_list[7],
      "par_sel09": fields_list[8],
      "par_sel10": fields_list[9],
      "par_sel11": fields_list[10],
      "par_sel12": fields_list[11],
      "par_sel13": fields_list[12],
      "par_sel14": fields_list[13],
      "par_sel15": fields_list[14],
      "par_sel16": fields_list[15],
      "par_sel17": fields_list[16],
      "par_sel18": fields_list[17],
      "par_sel19": fields_list[18],
      "par_sel20": fields_list[19],
      "par_sel21": fields_list[20],
      "par_sel22": fields_list[21],
      "par_sel23": fields_list[22],
      "par_sel24": fields_list[23],
      "par_sel25": fields_list[24]
    });

    return (pScript);
  } catch (error) {
    _fireStore.collection("prod_error").add({
      "error": error,
      "date": DateTime.now(),
    });
  }
}

dynamic prodScript(
  String scrID,
  String proparID,
  String par_code,
  String par_productreference,
  List<dynamic> list_reference,
  List<dynamic> list_classification,
  List<dynamic> list_update,
) {
  dynamic json = {};
  json['scrID'] = scrID;
  json['proparID'] = proparID;
  json['par_code'] = par_code;
  json['par_productreference'] = par_productreference;
  json['list_reference'] = list_reference;
  json['list_classification'] = list_classification;
  json['list_update'] = list_update;
  return json;
}

dynamic prodClassificationOrder(
  int ordergroup,
  List<dynamic> list_classification_Order,
) {
  dynamic json = {};
  json['ordergroup'] = ordergroup;
  json['list_classification_Order'] = list_classification_Order;
  return json;
}

dynamic prodClassification(
  String cla_description,
  int orderscript,
  String refID,
  String prod_classification_reference,
) {
  dynamic json = {};
  json['cla_description'] = cla_description;
  json['orderscript'] = orderscript;
  json['refID'] = refID;
  json['prod_classification_reference'] = prod_classification_reference;
  return json;
}

dynamic prodReference(
  int orderreference,
  String prod_script_reference_reference,
  String ref_description,
  String ref_title_field1,
  String ref_title_field2,
  String ref_title_field3,
) {
  dynamic json = {};
  json['orderreference'] = orderreference;
  json['prod_script_reference_reference'] = prod_script_reference_reference;
  json['ref_description'] = ref_description ?? "";
  json['ref_title_field1'] = ref_title_field1 ?? "";
  json['ref_title_field2'] = ref_title_field2 ?? "";
  json['ref_title_field3'] = ref_title_field3 ?? "";
  return json;
}

dynamic prodUpdate(
  int up_orderupdate,
  String refID,
  String up_prod_script_reference_reference,
  String up_option_check,
  String up_ref_text_field1,
  String up_ref_text_field2,
  String up_ref_text_field3,
) {
  dynamic json = {};
  json['up_orderupdate'] = up_orderupdate;
  json['refID'] = refID;
  json['up_prod_script_reference_reference'] =
      up_prod_script_reference_reference;
  json['up_option_check'] = up_option_check ?? "::";
  json['up_ref_text_field1'] = up_ref_text_field1 ?? "";
  json['up_ref_text_field2'] = up_ref_text_field2 ?? "";
  json['up_ref_text_field3'] = up_ref_text_field3 ?? "";
  return json;
}
