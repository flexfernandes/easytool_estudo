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

Future<bool> generateHTML(
  DocumentReference proparID,
  DocumentReference scrID,
  bool allRegister,
) async {
  if (allRegister) {
    QuerySnapshot query_prod = await FirebaseFirestore.instance
        .collection("prod_product_parameter")
        .where("scr_id", isEqualTo: scrID)
        .where("par_select", isEqualTo: true)
        .get();

    for (int pi = 0; pi < query_prod.docs.length; pi++) {
      var products = query_prod.docs[pi];
      createHtml(products.reference);
    }
  } else
    createHtml(proparID);
}

void createHtml(DocumentReference proparID) async {
  try {
    var script;
    String html = "";
    String htmlTec = "";
    String htmlName = "";
    String htmlName2 = "";
    String htmlDescription = "";
    String sta_page01 = "";
    String sta_page01_01 = "";
    String sta_page01_02 = "";
    String _destype = "";
    String marca = "";
    String peso = "";
    String altura = "";
    String largura = "";
    String comprimento = "";
    String complemento = "";
    var prod_palavraschave = [];

    // Busca informaçoes dos Parâmetros dos Produtos
    await FirebaseFirestore.instance
        .collection('prod_product_parameter')
        .doc(proparID.id)
        .get()
        .then((doc) {
      script = doc.data()['par_context'] ?? "";
      peso = doc.data()['par_weight1'].toString() ?? "0";
      altura = doc.data()['par_height'].toString() ?? "0";
      largura = doc.data()['par_largura'].toString() ?? "0";
      comprimento = doc.data()['par_length'].toString() ?? "0";
      complemento = doc.data()['prod_complemento'] ?? "";
    });

    // Busca informaçoes STANDARD
    await FirebaseFirestore.instance
        .collection('prod_standard')
        .doc('qJverXFUzJ0fKGrzwGLn')
        .get()
        .then((doc) {
      sta_page01 = doc.data()['sta_page01'];
      sta_page01_01 = doc.data()['sta_page01_01'];
      sta_page01_02 = doc.data()['sta_page01_02'];
    });

    var pScript = json.decode(script);

    // Busca informaçoes dos SCRIPT *****************************
    var scrScript = pScript["scrID"].toString();

    String scr_description_type;
    String scr_surname_type;
    String scr_about1;
    String scr_tratativa;
    String scr_categoria;
    bool scr_ispartname;
    String menu;

    await FirebaseFirestore.instance
        .collection('prod_script')
        .doc(scrScript)
        .get()
        .then((doc) {
      scr_description_type = doc.data()['scr_description_type'] ?? "";
      scr_surname_type = doc.data()['scr_surname_type'] ?? "";
      scr_about1 = doc.data()['scr_about1'] ?? "";
      scr_tratativa = doc.data()['scr_tratativa'] ?? "";
      scr_categoria = doc.data()['scr_categoria'] ?? "";
      prod_palavraschave.add(scr_description_type);
      scr_ispartname = doc.data()['scr_ispartname'] ?? false;
    });

    menu = scr_categoria.trim();

    if (scr_ispartname) htmlName = htmlName + scr_description_type + " ";

    if (scr_about1.isNotEmpty) {
      htmlDescription =
          htmlDescription + sta_page01_01.replaceAll("{[TAG1]}", scr_about1);
    }

    // LOOP - LER LISTA DE UPDATES
    for (int i = 0; i < pScript["list_update"].length; i++) {
      if (pScript["list_update"][i]["refID"].isEmpty) {
        break;
      }

      if ((pScript["list_update"][i]["up_option_check"].toUpperCase() ==
              "OUTRO(A)") ==
          (pScript["list_update"][i]["up_ref_text_field1"].isEmpty)) {
        continue;
      }

      if (pScript["list_update"][i]["up_option_check"].toUpperCase() ==
          "OUTRO(A)") {
        var _sta_page01_02 = sta_page01_02;

        var _field1 = pScript["list_update"][i]["up_ref_text_field1"];

        if (_field1.substring(0, 1) == "#") {
          _field1 = _field1.substring(1, _field1.length);
          htmlName = htmlName + _field1.toUpperCase() + " ";
        }

        // Informacoções técnicas - Nome produto
        _sta_page01_02 = _sta_page01_02.replaceAll("{[TAG1]}",
            pScript["list_reference"][i]["ref_description"].toString());
        _sta_page01_02 = _sta_page01_02.replaceAll("{[TAG2]}", _field1);
        htmlTec = htmlTec + _sta_page01_02;

        continue;
      }

      var upCurrent = pScript["list_update"][i]["up_option_check"].toString();

      var retClaOrd = pScript["list_classification"][i];
      marca = "";

      // LOOP - LER GRUPO DE OPÇÕES COMPARATIVAS
      for (int ii = 0;
          ii < retClaOrd["list_classification_Order"].length;
          ii++) {
        if (upCurrent !=
            retClaOrd["list_classification_Order"][ii]["cla_description"]) {
          continue;
        }

        var claReference = retClaOrd["list_classification_Order"][ii]
                ["prod_classification_reference"]
            .toString();

        // BUSCAR REGISTRO DA ENTIDADE CLASSIFICAÇÃO ................................
        await FirebaseFirestore.instance
            .collection('prod_classification')
            .doc(claReference)
            .get()
            .then((doc) {
          var _abolt = doc.data()['cla_about1'] ?? "";

          if (_abolt.isNotEmpty) {
            htmlDescription =
                htmlDescription + sta_page01_01.replaceAll("{[TAG1]}", _abolt);
          }

          var _cat = "";
          _cat = doc.data()['cla_categoria'] ?? "";

          if (_cat.isNotEmpty) {
            menu = menu + ">>" + _cat.trim();
          }

          if (doc.data()['cla_keyword']) {
            prod_palavraschave.add(doc.data()["cla_description"].toString());
          }

          if (doc.data()['cla_ispartname']) {
            if (doc.data()['cla_description_start'].toString().isNotEmpty) {
              var _sta = doc.data()['cla_description_start'] ?? "";
              htmlName = htmlName + _sta.toUpperCase() + " ";
            }

            var _end = "";

            if (doc.data()['cla_description_the_end'].toString().isNotEmpty) {
              _end = doc.data()['cla_description_the_end'] ?? "";
              _end = _end.toUpperCase();
            }

            htmlName = htmlName +
                doc.data()["cla_description"].toString() +
                _end +
                " ";
          }

          if (i == 0) {
            if (complemento.isNotEmpty) htmlName = htmlName + " " + complemento;
          }

          var _sta_page01_02 = sta_page01_02;

          if (pScript["list_reference"][i]["ref_description"].toString() ==
              "Marca") {
            marca = pScript["list_reference"][i]["ref_description"].toString();
          }

          if (!scr_ispartname) {
            scr_description_type = doc.data()["cla_description"].toString();
            scr_ispartname = true;
          }

          _sta_page01_02 = _sta_page01_02.replaceAll("{[TAG1]}",
              pScript["list_reference"][i]["ref_description"].toString());
          _sta_page01_02 = _sta_page01_02.replaceAll(
              "{[TAG2]}", doc.data()["cla_description"].toString());
          htmlTec = htmlTec + _sta_page01_02;
        }); // FIM <><> BUSCAR REGISTRO DA ENTIDADE CLASSIFICAÇÃO ................................

      } // LOOP - LER GRUPO DE OPÇÕES COMPARATIVAS
    }

    // Informacoções técnicas - Peso
    var _tec = sta_page01_02;
    _tec = _tec.replaceAll("{[TAG1]}", "Peso");
    _tec = _tec.replaceAll("{[TAG2]}", "${peso}g");
    htmlTec = htmlTec + _tec;

    // Informacoções técnicas - Medida
    _tec = sta_page01_02;
    _tec = _tec.replaceAll("{[TAG1]}", "Medida");
    _tec = _tec.replaceAll(
        "{[TAG2]}", "${comprimento}mm(C) x ${largura}mm(L) x ${altura}mm(A)");
    htmlTec = htmlTec + _tec;

    htmlName = htmlName.trim().replaceAll("  ", " ");
    htmlName = htmlName.trim().replaceAll(" ,", ",");
    htmlName = htmlName.trim().replaceAll(",,", ",");

    if (scr_tratativa == "este") {
      htmlDescription = htmlDescription.trim().replaceAll("{[t]}", "e");
      htmlDescription = htmlDescription.trim().replaceAll("{[T]}", "E");
      htmlDescription = htmlDescription.trim().replaceAll("{[o]}", "o");
      htmlDescription = htmlDescription.trim().replaceAll("{[O]}", "O");
    } else {
      htmlDescription = htmlDescription.trim().replaceAll("{[t]}", "a");
      htmlDescription = htmlDescription.trim().replaceAll("{[T]}", "A");
      htmlDescription = htmlDescription.trim().replaceAll("{[o]}", "a");
      htmlDescription = htmlDescription.trim().replaceAll("{[O]}", "A");
    }

    htmlDescription =
        htmlDescription.trim().replaceAll("{[p]}", scr_description_type);
//htmlDescription = htmlDescription.trim().replaceAll("{[P]}",scr_description_type);

    scr_surname_type = scr_surname_type.trim();

    if (scr_surname_type.isNotEmpty) {
      scr_surname_type = (scr_surname_type + " " + htmlName).trim();
    } else {
      scr_surname_type = htmlName;
      htmlName = "";
    }

    html = sta_page01.replaceAll(
        "{[TAG1]}", scr_surname_type.toUpperCase().trim());
    html = html.replaceAll("{[TAG2]}", htmlName.toUpperCase().trim());
    html = html.replaceAll("{[TAG3]}", htmlDescription.trim());
    html = html.replaceAll("{[TAG4]}", htmlTec);

    await FirebaseFirestore.instance
        .collection("prod_product_parameter")
        .doc(proparID.id)
        .update({
      "par_html": html,
      "par_description": scr_surname_type.toUpperCase().trim(),
      "prod_marca": marca,
      "prod_palavraschave": prod_palavraschave,
      "prod_categorias": menu,
    });
  } catch (error) {
    FirebaseFirestore.instance.collection("prod_error").add({
      "error": error,
      "date": DateTime.now(),
    });
  }
}
