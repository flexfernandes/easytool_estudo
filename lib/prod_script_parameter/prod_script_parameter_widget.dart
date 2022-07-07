import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../prod_script_parameter_detail/prod_script_parameter_detail_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdScriptParameterWidget extends StatefulWidget {
  const ProdScriptParameterWidget({
    Key key,
    this.scrID,
  }) : super(key: key);

  final DocumentReference scrID;

  @override
  _ProdScriptParameterWidgetState createState() =>
      _ProdScriptParameterWidgetState();
}

class _ProdScriptParameterWidgetState extends State<ProdScriptParameterWidget> {
  TextEditingController textFieldCodeController;
  TextEditingController textFieldReferenciaController;
  bool retEx;
  var retBarcode = '';
  dynamic tempJSON2;
  dynamic tempJSON;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textFieldCodeController = TextEditingController();
    textFieldReferenciaController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProdScriptRecord>(
      stream: ProdScriptRecord.getDocument(widget.scrID),
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
        final prodScriptParameterProdScriptRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Cadastro de',
                  style: FlutterFlowTheme.of(context).title2.override(
                        fontFamily: 'Lexend Deca',
                        color: Colors.white,
                        fontSize: 16,
                      ),
                ),
                Text(
                  prodScriptParameterProdScriptRecord.scrDescription,
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
          body: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12, 0, 12, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(-0.95, 0),
                                      child: InkWell(
                                        onTap: () async {
                                          retBarcode =
                                              await FlutterBarcodeScanner
                                                  .scanBarcode(
                                            '#C62828', // scanning line color
                                            'Cancelar', // cancel button text
                                            true, // whether to show the flash icon
                                            ScanMode.QR,
                                          );

                                          await actions.copyClipBoard(
                                            retBarcode,
                                          );

                                          setState(() {});
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.barcode,
                                          color: Color(0xFF070707),
                                          size: 40,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 10, 0),
                                    child: Text(
                                      retBarcode,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF040404),
                                            fontSize: 18,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0, 0, 8),
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.95,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .tertiaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .gray200,
                                          width: 2,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            8, 0, 8, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 6, 5, 5),
                                                child: TextFormField(
                                                  controller:
                                                      textFieldCodeController,
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText: 'Código',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: Colors.black,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color: Colors.black,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 10, 5, 10),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 6, 5, 5),
                                                child: TextFormField(
                                                  controller:
                                                      textFieldReferenciaController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelText: 'Referência',
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF0C0C0C),
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryColor,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF020202),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF020202),
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                5, 10, 5, 10),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xFF050505),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                  textAlign: TextAlign.start,
                                                ),
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.95, 0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5, 0, 5, 0),
                                                      child: InkWell(
                                                        onTap: () async {
                                                          var _shouldSetState =
                                                              false;
                                                          setState(() =>
                                                              FFAppState()
                                                                  .controler = 0);
                                                          if (FFAppState()
                                                              .boolTemp) {
                                                            setState(() =>
                                                                FFAppState()
                                                                        .boolTemp =
                                                                    false);
                                                            setState(() =>
                                                                FFAppState()
                                                                        .boolTemp =
                                                                    false);
                                                            if ((textFieldCodeController
                                                                        .text !=
                                                                    null) &&
                                                                (textFieldCodeController
                                                                        .text !=
                                                                    '')) {
                                                              if ((textFieldReferenciaController
                                                                          .text !=
                                                                      null) &&
                                                                  (textFieldReferenciaController
                                                                          .text !=
                                                                      '')) {
                                                                retEx = await actions
                                                                    .thereIsProduct(
                                                                  textFieldCodeController
                                                                      .text,
                                                                );
                                                                _shouldSetState =
                                                                    true;
                                                                if (retEx) {
                                                                  setState(() =>
                                                                      FFAppState()
                                                                              .boolTemp =
                                                                          true);
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        content:
                                                                            Text('Já existe um registro com este código cadastrado!'),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                } else {
                                                                  final prodProductParameterCreateData =
                                                                      createProdProductParameterRecordData(
                                                                    scrId: widget
                                                                        .scrID,
                                                                    parCode:
                                                                        textFieldCodeController
                                                                            .text,
                                                                    parProductreference:
                                                                        textFieldReferenciaController
                                                                            .text,
                                                                    dateCreate:
                                                                        getCurrentTimestamp,
                                                                    parHeight:
                                                                        0.0,
                                                                    parLength:
                                                                        0.0,
                                                                    parLargura:
                                                                        0.0,
                                                                    parWeight1:
                                                                        0.0,
                                                                    parWeight2:
                                                                        0.0,
                                                                    parValue:
                                                                        0.0,
                                                                    parSelect:
                                                                        false,
                                                                    parDateProcessing:
                                                                        getCurrentTimestamp,
                                                                    parOrder: 0,
                                                                  );
                                                                  await ProdProductParameterRecord
                                                                      .collection
                                                                      .doc()
                                                                      .set(
                                                                          prodProductParameterCreateData);
                                                                  setState(() {
                                                                    textFieldCodeController
                                                                        ?.clear();
                                                                    textFieldReferenciaController
                                                                        ?.clear();
                                                                  });
                                                                  setState(() =>
                                                                      FFAppState()
                                                                              .boolTemp =
                                                                          true);
                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                }

                                                                if (_shouldSetState)
                                                                  setState(
                                                                      () {});
                                                                return;
                                                              }
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    content: Text(
                                                                        'Referência  não pode ficar em branco'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                              if (_shouldSetState)
                                                                setState(() {});
                                                              return;
                                                            } else {
                                                              setState(() =>
                                                                  FFAppState()
                                                                          .boolTemp =
                                                                      true);
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    content: Text(
                                                                        'Código  não pode ficar em branco'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                              if (_shouldSetState)
                                                                setState(() {});
                                                              return;
                                                            }
                                                          } else {
                                                            if (_shouldSetState)
                                                              setState(() {});
                                                            return;
                                                          }

                                                          if (_shouldSetState)
                                                            setState(() {});
                                                        },
                                                        child: Icon(
                                                          Icons.add,
                                                          color: Colors.black,
                                                          size: 35,
                                                        ),
                                                      ),
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
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: double.infinity,
                                  constraints: BoxConstraints(
                                    maxWidth: MediaQuery.of(context).size.width,
                                    maxHeight:
                                        MediaQuery.of(context).size.height * 1,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: StreamBuilder<
                                      List<ProdProductParameterRecord>>(
                                    stream: queryProdProductParameterRecord(
                                      queryBuilder:
                                          (prodProductParameterRecord) =>
                                              prodProductParameterRecord
                                                  .where('scr_id',
                                                      isEqualTo: widget.scrID)
                                                  .orderBy('dateCreate',
                                                      descending: true),
                                      limit: 12,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: SpinKitCircle(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              size: 30,
                                            ),
                                          ),
                                        );
                                      }
                                      List<ProdProductParameterRecord>
                                          productParatemerListProdProductParameterRecordList =
                                          snapshot.data;
                                      return ListView.builder(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            productParatemerListProdProductParameterRecordList
                                                .length,
                                        itemBuilder: (context,
                                            productParatemerListIndex) {
                                          final productParatemerListProdProductParameterRecord =
                                              productParatemerListProdProductParameterRecordList[
                                                  productParatemerListIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 3, 18, 3),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                height: 59,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5,
                                                                          3,
                                                                          5,
                                                                          0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  var _shouldSetState =
                                                                      false;
                                                                  if ((productParatemerListProdProductParameterRecord
                                                                              .parContext !=
                                                                          null) &&
                                                                      (productParatemerListProdProductParameterRecord
                                                                              .parContext !=
                                                                          '')) {
                                                                    tempJSON =
                                                                        await actions
                                                                            .returnContext(
                                                                      productParatemerListProdProductParameterRecord
                                                                          .reference,
                                                                    );
                                                                    _shouldSetState =
                                                                        true;
                                                                    setState(() =>
                                                                        FFAppState().scriptJSON =
                                                                            tempJSON);
                                                                    await Navigator
                                                                        .push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                ProdScriptParameterDetailWidget(
                                                                          scrID:
                                                                              widget.scrID,
                                                                          prodID:
                                                                              productParatemerListProdProductParameterRecord.reference,
                                                                          prodReference:
                                                                              productParatemerListProdProductParameterRecord.parProductreference,
                                                                        ),
                                                                      ),
                                                                    );
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    tempJSON2 =
                                                                        await actions
                                                                            .createScript(
                                                                      widget
                                                                          .scrID,
                                                                      productParatemerListProdProductParameterRecord
                                                                          .reference,
                                                                      122,
                                                                    );
                                                                    _shouldSetState =
                                                                        true;
                                                                    setState(() =>
                                                                        FFAppState().scriptJSON =
                                                                            tempJSON2);
                                                                    await Navigator
                                                                        .push(
                                                                      context,
                                                                      MaterialPageRoute(
                                                                        builder:
                                                                            (context) =>
                                                                                ProdScriptParameterDetailWidget(
                                                                          scrID:
                                                                              widget.scrID,
                                                                          prodID:
                                                                              productParatemerListProdProductParameterRecord.reference,
                                                                          prodReference:
                                                                              productParatemerListProdProductParameterRecord.parProductreference,
                                                                        ),
                                                                      ),
                                                                    );
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  }

                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                },
                                                                text: '',
                                                                icon: Icon(
                                                                  Icons
                                                                      .auto_fix_high,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                  size: 18,
                                                                ),
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 50,
                                                                  height: 25,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryColor,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .subtitle2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        color: Colors
                                                                            .white,
                                                                      ),
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(6,
                                                                      0, 6, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                productParatemerListProdProductParameterRecord
                                                                    .parCode,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: Color(
                                                                          0xFF1A1F24),
                                                                      fontSize:
                                                                          13,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(6,
                                                                      0, 6, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                productParatemerListProdProductParameterRecord
                                                                    .parProductreference,
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: Color(
                                                                          0xFF1A1F24),
                                                                      fontSize:
                                                                          13,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(3,
                                                                      0, 3, 0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Text(
                                                                '',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1,
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      0, 0, 0),
                                                          child: Container(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.9,
                                                            height: 30,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .tertiaryColor,
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          62,
                                                                          0,
                                                                          0,
                                                                          0),
                                                              child: Text(
                                                                productParatemerListProdProductParameterRecord
                                                                    .parDescription,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Lexend Deca',
                                                                      color: Color(
                                                                          0xFF1A1F24),
                                                                      fontSize:
                                                                          11,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
