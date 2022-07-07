import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../prod_products_detail/prod_products_detail_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdScriptParameterDetailWidget extends StatefulWidget {
  const ProdScriptParameterDetailWidget({
    Key key,
    this.scrID,
    this.prodID,
    this.prodReference,
  }) : super(key: key);

  final DocumentReference scrID;
  final DocumentReference prodID;
  final String prodReference;

  @override
  _ProdScriptParameterDetailWidgetState createState() =>
      _ProdScriptParameterDetailWidgetState();
}

class _ProdScriptParameterDetailWidgetState
    extends State<ProdScriptParameterDetailWidget> {
  String outTF;
  String rb01Value;
  TextEditingController text0101Controller;
  TextEditingController textComplementoController;
  TextEditingController parCodeController;
  TextEditingController parProductreferenceController;
  TextEditingController parHeightController;
  TextEditingController parLarguraController;
  TextEditingController parLengthController;
  TextEditingController parPesobrutoController;
  TextEditingController parPesoliquidoController;
  TextEditingController parValorController;
  String rb02Value;
  TextEditingController text0201Controller;
  String rb03Value;
  TextEditingController text0301Controller;
  String rb04Value;
  TextEditingController text0401Controller;
  String rb05Value;
  TextEditingController text0501Controller;
  String rb06Value;
  TextEditingController text0601Controller;
  String rb07Value;
  TextEditingController text0701Controller;
  String rb08Value;
  TextEditingController text0801Controller;
  String rb09Value;
  TextEditingController text0901Controller;
  String rb10Value;
  TextEditingController text1001Controller;
  String rb11Value;
  TextEditingController text1101Controller;
  String rb12Value;
  TextEditingController text1201Controller;
  String rb13Value;
  TextEditingController text1301Controller;
  String rb14Value;
  TextEditingController text1401Controller;
  String rb15Value;
  TextEditingController text1501Controller;
  String rb16Value;
  TextEditingController text1601Controller;
  String rb17Value;
  TextEditingController text1701Controller;
  String rb18Value;
  TextEditingController text1801Controller;
  String rb19Value;
  TextEditingController text1901Controller;
  String rb20Value;
  TextEditingController text2001Controller;
  String rb21Value;
  TextEditingController text2101Controller;
  String rb22Value;
  TextEditingController text2201Controller;
  String rb23Value;
  TextEditingController text2301Controller;
  String rb24Value;
  TextEditingController text2401Controller;
  String rb25Value;
  TextEditingController text2501Controller;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    text0101Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 1)].up_ref_text_field1''',
    ).toString());
    text0201Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 2)].up_ref_text_field1''',
    ).toString());
    text0301Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 3)].up_ref_text_field1''',
    ).toString());
    text0401Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 4)].up_ref_text_field1''',
    ).toString());
    text0501Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 5)].up_ref_text_field1''',
    ).toString());
    text0601Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 6)].up_ref_text_field1''',
    ).toString());
    text0701Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 7)].up_ref_text_field1''',
    ).toString());
    text0801Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 8)].up_ref_text_field1''',
    ).toString());
    text0901Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 9)].up_ref_text_field1''',
    ).toString());
    text1001Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 10)].up_ref_text_field1''',
    ).toString());
    text1101Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 11)].up_ref_text_field1''',
    ).toString());
    text1201Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 12)].up_ref_text_field1''',
    ).toString());
    text1301Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 13)].up_ref_text_field1''',
    ).toString());
    text1401Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 14)].up_ref_text_field1''',
    ).toString());
    text1501Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 15)].up_ref_text_field1''',
    ).toString());
    text1601Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 16)].up_ref_text_field1''',
    ).toString());
    text1701Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 17)].up_ref_text_field1''',
    ).toString());
    text1801Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 18)].up_ref_text_field1''',
    ).toString());
    text1901Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 19)].up_ref_text_field1''',
    ).toString());
    text2001Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 20)].up_ref_text_field1''',
    ).toString());
    text2101Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 21)].up_ref_text_field1''',
    ).toString());
    text2201Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 22)].up_ref_text_field1''',
    ).toString());
    text2301Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 23)].up_ref_text_field1''',
    ).toString());
    text2401Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 24)].up_ref_text_field1''',
    ).toString());
    text2501Controller = TextEditingController(
        text: getJsonField(
      FFAppState().scriptJSON,
      r'''$.list_update[?(@.up_orderupdate == 25)].up_ref_text_field1''',
    ).toString());
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ProdScriptRecord>(
      future: ProdScriptRecord.getDocumentOnce(widget.scrID),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 30,
              height: 30,
              child: SpinKitCircle(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 30,
              ),
            ),
          );
        }
        final prodScriptParameterDetailProdScriptRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  prodScriptParameterDetailProdScriptRecord.scrDescription,
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                ),
                Text(
                  widget.prodReference,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: FlutterFlowTheme.of(context).tertiaryColor,
                        fontSize: 16,
                      ),
                ),
              ],
            ),
            actions: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).tertiaryColor,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ],
            centerTitle: false,
            elevation: 2,
          ),
          backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
          body: SafeArea(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).tertiaryColor,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Stack(
                      children: [
                        FutureBuilder<ProdProductParameterRecord>(
                          future: ProdProductParameterRecord.getDocumentOnce(
                              widget.prodID),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: SpinKitCircle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    size: 30,
                                  ),
                                ),
                              );
                            }
                            final paramProductsProdProductParameterRecord =
                                snapshot.data;
                            return Form(
                              key: formKey,
                              autovalidateMode: AutovalidateMode.disabled,
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 12, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 8, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          8,
                                                                          5,
                                                                          5),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    parCodeController ??=
                                                                        TextEditingController(
                                                                  text: paramProductsProdProductParameterRecord
                                                                      .parCode,
                                                                ),
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  'parCodeController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus: true,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Código',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          8,
                                                                          5,
                                                                          5),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    parProductreferenceController ??=
                                                                        TextEditingController(
                                                                  text: paramProductsProdProductParameterRecord
                                                                      .parProductreference,
                                                                ),
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  'parProductreferenceController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus: true,
                                                                readOnly: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Referência',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          6,
                                                                          5,
                                                                          5),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    parLengthController ??=
                                                                        TextEditingController(
                                                                  text: paramProductsProdProductParameterRecord
                                                                      .parLength
                                                                      .toString(),
                                                                ),
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  'parLengthController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Comprimento em (mm)',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                  suffixIcon: parLengthController
                                                                          .text
                                                                          .isNotEmpty
                                                                      ? InkWell(
                                                                          onTap: () =>
                                                                              setState(
                                                                            () =>
                                                                                parLengthController?.clear(),
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.clear,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                        )
                                                                      : null,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    parLarguraController ??=
                                                                        TextEditingController(
                                                                  text: paramProductsProdProductParameterRecord
                                                                      .parLargura
                                                                      .toString(),
                                                                ),
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  'parLarguraController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Largura em (mm)',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                  suffixIcon: parLarguraController
                                                                          .text
                                                                          .isNotEmpty
                                                                      ? InkWell(
                                                                          onTap: () =>
                                                                              setState(
                                                                            () =>
                                                                                parLarguraController?.clear(),
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.clear,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                        )
                                                                      : null,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          6,
                                                                          5,
                                                                          5),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    parHeightController ??=
                                                                        TextEditingController(
                                                                  text: paramProductsProdProductParameterRecord
                                                                      .parHeight
                                                                      .toString(),
                                                                ),
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  'parHeightController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Altura em (mm)',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                  suffixIcon: parHeightController
                                                                          .text
                                                                          .isNotEmpty
                                                                      ? InkWell(
                                                                          onTap: () =>
                                                                              setState(
                                                                            () =>
                                                                                parHeightController?.clear(),
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.clear,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                        )
                                                                      : null,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          6,
                                                                          5,
                                                                          5),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    parPesobrutoController ??=
                                                                        TextEditingController(
                                                                  text: paramProductsProdProductParameterRecord
                                                                      .parWeight1
                                                                      .toString(),
                                                                ),
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  'parPesobrutoController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Peso Bruto em (g)',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                  suffixIcon: parPesobrutoController
                                                                          .text
                                                                          .isNotEmpty
                                                                      ? InkWell(
                                                                          onTap: () =>
                                                                              setState(
                                                                            () =>
                                                                                parPesobrutoController?.clear(),
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.clear,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                        )
                                                                      : null,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    parPesoliquidoController ??=
                                                                        TextEditingController(
                                                                  text: paramProductsProdProductParameterRecord
                                                                      .parWeight2
                                                                      .toString(),
                                                                ),
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  'parPesoliquidoController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Peso Líquido em (g)',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                  suffixIcon: parPesoliquidoController
                                                                          .text
                                                                          .isNotEmpty
                                                                      ? InkWell(
                                                                          onTap: () =>
                                                                              setState(
                                                                            () =>
                                                                                parPesoliquidoController?.clear(),
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.clear,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                        )
                                                                      : null,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6,
                                                                          6,
                                                                          5,
                                                                          5),
                                                              child:
                                                                  TextFormField(
                                                                controller:
                                                                    parValorController ??=
                                                                        TextEditingController(
                                                                  text:
                                                                      formatNumber(
                                                                    paramProductsProdProductParameterRecord
                                                                        .parValue,
                                                                    formatType:
                                                                        FormatType
                                                                            .decimal,
                                                                    decimalType:
                                                                        DecimalType
                                                                            .automatic,
                                                                  ),
                                                                ),
                                                                onChanged: (_) =>
                                                                    EasyDebounce
                                                                        .debounce(
                                                                  'parValorController',
                                                                  Duration(
                                                                      milliseconds:
                                                                          200),
                                                                  () => setState(
                                                                      () {}),
                                                                ),
                                                                autofocus: true,
                                                                obscureText:
                                                                    false,
                                                                decoration:
                                                                    InputDecoration(
                                                                  isDense: true,
                                                                  labelText:
                                                                      'Valor',
                                                                  labelStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  hintStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            12,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      width: 1,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .only(
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              0),
                                                                      bottomRight:
                                                                          Radius.circular(
                                                                              6),
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              6),
                                                                      topRight:
                                                                          Radius.circular(
                                                                              0),
                                                                    ),
                                                                  ),
                                                                  contentPadding:
                                                                      EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                  suffixIcon: parValorController
                                                                          .text
                                                                          .isNotEmpty
                                                                      ? InkWell(
                                                                          onTap: () =>
                                                                              setState(
                                                                            () =>
                                                                                parValorController?.clear(),
                                                                          ),
                                                                          child:
                                                                              Icon(
                                                                            Icons.clear,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                        )
                                                                      : null,
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 1)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 1)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb01Value !=
                                                                            null
                                                                        ? [
                                                                            rb01Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 1)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel01
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb01Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb01Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb01Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0101Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0101Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0101Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0101Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 0, 0, 6),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            6,
                                                                            5,
                                                                            5),
                                                                child:
                                                                    TextFormField(
                                                                  controller:
                                                                      textComplementoController ??=
                                                                          TextEditingController(
                                                                    text: paramProductsProdProductParameterRecord
                                                                        .prodComplemento,
                                                                  ),
                                                                  onChanged: (_) =>
                                                                      EasyDebounce
                                                                          .debounce(
                                                                    'textComplementoController',
                                                                    Duration(
                                                                        milliseconds:
                                                                            200),
                                                                    () => setState(
                                                                        () {}),
                                                                  ),
                                                                  autofocus:
                                                                      true,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        true,
                                                                    labelText:
                                                                        'Complemento Descrição',
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    hintStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              12,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(0),
                                                                        bottomRight:
                                                                            Radius.circular(6),
                                                                        topLeft:
                                                                            Radius.circular(6),
                                                                        topRight:
                                                                            Radius.circular(0),
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        width:
                                                                            1,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(0),
                                                                        bottomRight:
                                                                            Radius.circular(6),
                                                                        topLeft:
                                                                            Radius.circular(6),
                                                                        topRight:
                                                                            Radius.circular(0),
                                                                      ),
                                                                    ),
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            5,
                                                                            10,
                                                                            5,
                                                                            10),
                                                                    suffixIcon: textComplementoController
                                                                            .text
                                                                            .isNotEmpty
                                                                        ? InkWell(
                                                                            onTap: () =>
                                                                                setState(
                                                                              () => textComplementoController?.clear(),
                                                                            ),
                                                                            child:
                                                                                Icon(
                                                                              Icons.clear,
                                                                              color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                              size: 15,
                                                                            ),
                                                                          )
                                                                        : null,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                      ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 2)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference ==2)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb02Value !=
                                                                            null
                                                                        ? [
                                                                            rb02Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 2)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel02
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb02Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb02Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb02Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0201Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0201Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0201Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0201Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 3)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference ==3)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb03Value !=
                                                                            null
                                                                        ? [
                                                                            rb03Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 3)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel03
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb03Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb03Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb03Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0301Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0301Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0301Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0301Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 4)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference ==4)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb04Value !=
                                                                            null
                                                                        ? [
                                                                            rb04Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 4)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel04
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb04Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb04Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb04Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0401Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0401Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0401Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0401Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 5)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference ==5)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb05Value !=
                                                                            null
                                                                        ? [
                                                                            rb05Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 5)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel05
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb05Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb05Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb05Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0501Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0501Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0501Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0501Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 6)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference ==6)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb06Value !=
                                                                            null
                                                                        ? [
                                                                            rb06Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 6)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel06
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb06Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb06Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb06Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0601Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0601Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0601Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0601Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 7)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 7)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb07Value !=
                                                                            null
                                                                        ? [
                                                                            rb07Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 7)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel07
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb07Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb07Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb07Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0701Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0701Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0701Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0701Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 8)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference ==8)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb08Value !=
                                                                            null
                                                                        ? [
                                                                            rb08Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 8)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel08
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb08Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb08Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb08Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0801Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0801Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0801Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0801Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 9)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 9)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb09Value !=
                                                                            null
                                                                        ? [
                                                                            rb09Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 9)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel09
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb09Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb09Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb09Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text0901Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text0901Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text0901Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text0901Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 10)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 10)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb10Value !=
                                                                            null
                                                                        ? [
                                                                            rb10Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 10)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel10
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb10Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb10Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb10Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1001Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1001Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1001Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1001Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 11)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 11)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb11Value !=
                                                                            null
                                                                        ? [
                                                                            rb11Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 11)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel11
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb11Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb11Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb11Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1101Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1101Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1101Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1101Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 12)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 12)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb12Value !=
                                                                            null
                                                                        ? [
                                                                            rb12Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 12)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel12
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb12Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb12Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb12Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1201Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1201Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1201Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1201Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 13)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 13)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb13Value !=
                                                                            null
                                                                        ? [
                                                                            rb13Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 13)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel13
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb13Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb13Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb13Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1301Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1301Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1301Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1301Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 14)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 14)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb14Value !=
                                                                            null
                                                                        ? [
                                                                            rb14Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 14)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel14
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb14Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb14Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb14Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1401Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1401Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1401Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1401Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 15)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 15)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb15Value !=
                                                                            null
                                                                        ? [
                                                                            rb15Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 15)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel15
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb15Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb15Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb15Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1501Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1501Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1501Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1501Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 16)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 16)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb16Value !=
                                                                            null
                                                                        ? [
                                                                            rb16Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 16)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel16
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb16Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb16Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb16Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1601Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1601Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1601Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1601Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 17)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 17)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb17Value !=
                                                                            null
                                                                        ? [
                                                                            rb17Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 17)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel17
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb17Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb17Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb17Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1701Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1701Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1701Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1701Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 18)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 18)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb18Value !=
                                                                            null
                                                                        ? [
                                                                            rb18Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 18)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel18
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb18Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb18Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb18Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1801Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1801Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1801Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1801Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 19)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 19)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb19Value !=
                                                                            null
                                                                        ? [
                                                                            rb19Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 19)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel19
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb19Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb19Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb19Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text1901Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text1901Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text1901Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text1901Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 20)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 20)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb20Value !=
                                                                            null
                                                                        ? [
                                                                            rb20Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 20)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel20
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb20Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb20Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb20Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text2001Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text2001Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text2001Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text2001Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 21)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 21)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb21Value !=
                                                                            null
                                                                        ? [
                                                                            rb21Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 21)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel21
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb21Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb21Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb21Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text2101Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text2101Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text2101Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text2101Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 22)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 22)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb22Value !=
                                                                            null
                                                                        ? [
                                                                            rb22Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 22)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel22
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb22Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb22Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb22Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text2201Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text2201Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text2201Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text2201Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 23)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 23)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb23Value !=
                                                                            null
                                                                        ? [
                                                                            rb23Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 23)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel23
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb23Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb23Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb23Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text2301Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text2301Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text2301Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text2301Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 24)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 24)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb24Value !=
                                                                            null
                                                                        ? [
                                                                            rb24Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 24)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel24
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb24Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb24Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb24Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text2401Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text2401Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text2401Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text2401Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if ((FFAppState().stringVisibility) !=
                                        (getJsonField(
                                          FFAppState().scriptJSON,
                                          r'''$.list_reference[?(@.orderreference == 25)].ref_description''',
                                        )))
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6, 6, 6, 0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 1,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.97,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  border: Border.all(
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 0, 5, 0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0, 5, 0, 0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          6),
                                                              child: Text(
                                                                getJsonField(
                                                                  FFAppState()
                                                                      .scriptJSON,
                                                                  r'''$.list_reference[?(@.orderreference == 25)].ref_description''',
                                                                ).toString(),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .tertiaryColor,
                                                                      fontSize:
                                                                          14,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FlutterFlowChoiceChips(
                                                                initiallySelected:
                                                                    rb25Value !=
                                                                            null
                                                                        ? [
                                                                            rb25Value
                                                                          ]
                                                                        : [
                                                                            getJsonField(
                                                                              FFAppState().scriptJSON,
                                                                              r'''$.list_update[?(@.up_orderupdate== 25)].up_option_check''',
                                                                            ).toString()
                                                                          ],
                                                                options: (paramProductsProdProductParameterRecord
                                                                            .parSel25
                                                                            .toList() ??
                                                                        [])
                                                                    .map((label) =>
                                                                        ChipData(
                                                                            label))
                                                                    .toList(),
                                                                onChanged: (val) =>
                                                                    setState(() =>
                                                                        rb25Value =
                                                                            val.first),
                                                                selectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xFF28C052),
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryColor,
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor:
                                                                      Colors
                                                                          .white,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                unselectedChipStyle:
                                                                    ChipStyle(
                                                                  backgroundColor:
                                                                      Colors
                                                                          .white,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Color(
                                                                            0xFF323B45),
                                                                        fontSize:
                                                                            11,
                                                                        fontWeight:
                                                                            FontWeight.w200,
                                                                      ),
                                                                  iconColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  iconSize: 5,
                                                                  elevation: 1,
                                                                ),
                                                                chipSpacing: 10,
                                                                multiselect:
                                                                    false,
                                                                initialized:
                                                                    rb25Value !=
                                                                        null,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if ((FFAppState()
                                                              .StringVisibilityOutro) ==
                                                          (rb25Value))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(0,
                                                                      0, 0, 6),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          6,
                                                                          5,
                                                                          5),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        text2501Controller,
                                                                    onChanged: (_) =>
                                                                        EasyDebounce
                                                                            .debounce(
                                                                      'text2501Controller',
                                                                      Duration(
                                                                          milliseconds:
                                                                              200),
                                                                      () => setState(
                                                                          () {}),
                                                                    ),
                                                                    autofocus:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          true,
                                                                      labelText:
                                                                          'Outro(a)',
                                                                      labelStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .subtitle2
                                                                          .override(
                                                                            fontFamily:
                                                                                'Lexend Deca',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).tertiaryColor,
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.w300,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          width:
                                                                              1,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(0),
                                                                          bottomRight:
                                                                              Radius.circular(6),
                                                                          topLeft:
                                                                              Radius.circular(6),
                                                                          topRight:
                                                                              Radius.circular(0),
                                                                        ),
                                                                      ),
                                                                      contentPadding:
                                                                          EdgeInsetsDirectional.fromSTEB(
                                                                              5,
                                                                              10,
                                                                              5,
                                                                              10),
                                                                      suffixIcon: text2501Controller
                                                                              .text
                                                                              .isNotEmpty
                                                                          ? InkWell(
                                                                              onTap: () => setState(
                                                                                () => text2501Controller?.clear(),
                                                                              ),
                                                                              child: Icon(
                                                                                Icons.clear,
                                                                                color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                size: 15,
                                                                              ),
                                                                            )
                                                                          : null,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .subtitle2
                                                                        .override(
                                                                          fontFamily:
                                                                              'Lexend Deca',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryColor,
                                                                          fontSize:
                                                                              14,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 10, 0, 30),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                var _shouldSetState = false;
                                                outTF =
                                                    await actions.updateContext(
                                                  widget.prodID,
                                                  rb01Value,
                                                  rb02Value,
                                                  rb03Value,
                                                  text0101Controller.text,
                                                  text0201Controller.text,
                                                  text0301Controller.text,
                                                  rb04Value,
                                                  rb05Value,
                                                  text0401Controller.text,
                                                  text0501Controller.text,
                                                  rb06Value,
                                                  rb07Value,
                                                  rb08Value,
                                                  rb09Value,
                                                  rb10Value,
                                                  rb11Value,
                                                  rb12Value,
                                                  text0601Controller.text,
                                                  text0701Controller.text,
                                                  text0801Controller.text,
                                                  text0901Controller.text,
                                                  text1001Controller.text,
                                                  text1101Controller.text,
                                                  text1201Controller.text,
                                                  rb13Value,
                                                  rb14Value,
                                                  rb15Value,
                                                  rb16Value,
                                                  rb17Value,
                                                  rb18Value,
                                                  rb19Value,
                                                  rb20Value,
                                                  rb21Value,
                                                  rb22Value,
                                                  rb23Value,
                                                  rb24Value,
                                                  rb25Value,
                                                  text1301Controller.text,
                                                  text1401Controller.text,
                                                  text1501Controller.text,
                                                  text1601Controller.text,
                                                  text1701Controller.text,
                                                  text1801Controller.text,
                                                  text1901Controller.text,
                                                  text2001Controller.text,
                                                  text2101Controller.text,
                                                  text2201Controller.text,
                                                  text2301Controller.text,
                                                  text2401Controller.text,
                                                  text2501Controller.text,
                                                );
                                                _shouldSetState = true;
                                                if ((outTF != null) &&
                                                    (outTF != '')) {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text(
                                                            'Não foi possível PROCESSAR O  SCRIPT'),
                                                        content: Text(
                                                            'Favor informar todas as opções!'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext),
                                                            child: Text('Ok'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  );
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                } else {
                                                  final prodProductParameterUpdateData =
                                                      createProdProductParameterRecordData(
                                                    parCode: parCodeController
                                                            ?.text ??
                                                        '',
                                                    parProductreference:
                                                        parProductreferenceController
                                                                ?.text ??
                                                            '',
                                                    parHeight: double.parse(
                                                        parHeightController
                                                                ?.text ??
                                                            ''),
                                                    parLength: double.parse(
                                                        parLengthController
                                                                ?.text ??
                                                            ''),
                                                    parLargura: double.parse(
                                                        parLarguraController
                                                                ?.text ??
                                                            ''),
                                                    parWeight1: double.parse(
                                                        parPesobrutoController
                                                                ?.text ??
                                                            ''),
                                                    parWeight2: double.parse(
                                                        parPesoliquidoController
                                                                ?.text ??
                                                            ''),
                                                    parValue: double.parse(
                                                        parValorController
                                                                ?.text ??
                                                            ''),
                                                    prodComplemento:
                                                        textComplementoController
                                                                ?.text ??
                                                            '',
                                                  );
                                                  await paramProductsProdProductParameterRecord
                                                      .reference
                                                      .update(
                                                          prodProductParameterUpdateData);
                                                  await actions.generateHTML(
                                                    widget.prodID,
                                                    widget.scrID,
                                                    false,
                                                  );
                                                  await Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          ProdProductsDetailWidget(
                                                        prodID: widget.prodID,
                                                      ),
                                                    ),
                                                  );
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }

                                                if (_shouldSetState)
                                                  setState(() {});
                                              },
                                              text: 'PROCESSAR',
                                              options: FFButtonOptions(
                                                width: 130,
                                                height: 40,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.white,
                                                        ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
