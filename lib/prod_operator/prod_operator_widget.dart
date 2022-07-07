import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../prod_operator_images/prod_operator_images_widget.dart';
import '../prod_operator_update/prod_operator_update_widget.dart';
import '../prod_products_detail/prod_products_detail_widget.dart';
import '../prod_script_parameter/prod_script_parameter_widget.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdOperatorWidget extends StatefulWidget {
  const ProdOperatorWidget({
    Key key,
    this.scrID,
  }) : super(key: key);

  final DocumentReference scrID;

  @override
  _ProdOperatorWidgetState createState() => _ProdOperatorWidgetState();
}

class _ProdOperatorWidgetState extends State<ProdOperatorWidget> {
  String fileBling;
  String urlFile;
  TextEditingController textFieldCodeController;
  bool retPesq;
  bool retPesqBAR;
  var retBarcodePES = '';
  String urlStringSelect;
  String urlStringAll;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textFieldCodeController = TextEditingController();
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
        final prodOperatorProdScriptRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      prodOperatorProdScriptRecord.scrDescription,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Lexend Deca',
                            color: FlutterFlowTheme.of(context).tertiaryColor,
                          ),
                    ),
                  ],
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
          backgroundColor: Colors.white,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                constraints: BoxConstraints(
                  maxWidth: double.infinity,
                  maxHeight: double.infinity,
                ),
                decoration: BoxDecoration(),
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 25, 5),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                setState(() => FFAppState()
                                                    .boolTemp = true);
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        ProdScriptParameterWidget(
                                                      scrID: widget.scrID,
                                                    ),
                                                  ),
                                                );
                                              },
                                              text: '',
                                              icon: Icon(
                                                Icons.add,
                                                size: 20,
                                              ),
                                              options: FFButtonOptions(
                                                width: 45,
                                                height: 25,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      fontSize: 10,
                                                    ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 15, 5),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await actions.generateHTML(
                                                  FFAppState().proparID,
                                                  widget.scrID,
                                                  true,
                                                );
                                              },
                                              text: '',
                                              icon: Icon(
                                                Icons.engineering,
                                                size: 15,
                                              ),
                                              options: FFButtonOptions(
                                                width: 40,
                                                height: 25,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      fontSize: 10,
                                                    ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 5, 3, 5),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                fileBling =
                                                    await actions.exportBling(
                                                  widget.scrID,
                                                );
                                                await actions.copyClipBoard(
                                                  fileBling,
                                                );
                                                urlFile =
                                                    await actions.writeFILE(
                                                  fileBling,
                                                  'csv',
                                                  'bling',
                                                );
                                                await launchURL(urlFile);

                                                setState(() {});
                                              },
                                              text: '',
                                              icon: FaIcon(
                                                FontAwesomeIcons.fileExport,
                                                size: 15,
                                              ),
                                              options: FFButtonOptions(
                                                width: 40,
                                                height: 25,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      fontSize: 10,
                                                    ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                              ),
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 8),
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
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
                                                  .fromSTEB(5, 6, 15, 5),
                                              child: TextFormField(
                                                controller:
                                                    textFieldCodeController,
                                                autofocus: true,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: true,
                                                  labelText:
                                                      'Código ou Referência',
                                                  labelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                                                5, 0, 15, 0),
                                                    child: InkWell(
                                                      onTap: () async {
                                                        var _shouldSetState =
                                                            false;
                                                        if ((textFieldCodeController
                                                                    .text !=
                                                                null) &&
                                                            (textFieldCodeController
                                                                    .text !=
                                                                '')) {
                                                          retPesq = await actions
                                                              .findSelectProduct(
                                                            textFieldCodeController
                                                                .text,
                                                          );
                                                          _shouldSetState =
                                                              true;
                                                          if (retPesq) {
                                                            setState(() {
                                                              textFieldCodeController
                                                                  ?.clear();
                                                            });
                                                            if (_shouldSetState)
                                                              setState(() {});
                                                            return;
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Pesquisa'),
                                                                  content: Text(
                                                                      'Produto Inexistente'),
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
                                                        Icons.search_off,
                                                        color: Colors.black,
                                                        size: 35,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
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
                                                        retBarcodePES =
                                                            await FlutterBarcodeScanner
                                                                .scanBarcode(
                                                          '#C62828', // scanning line color
                                                          'Cancelar', // cancel button text
                                                          true, // whether to show the flash icon
                                                          ScanMode.QR,
                                                        );

                                                        _shouldSetState = true;
                                                        retPesqBAR = await actions
                                                            .findSelectProduct(
                                                          retBarcodePES,
                                                        );
                                                        _shouldSetState = true;
                                                        if (retPesqBAR) {
                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        }

                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'Pesquisa'),
                                                              content: Text(
                                                                  'Produto Inexistente'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
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
                                                        if (_shouldSetState)
                                                          setState(() {});
                                                      },
                                                      child: FaIcon(
                                                        FontAwesomeIcons
                                                            .barcode,
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
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: StreamBuilder<
                                        List<ProdProductParameterRecord>>(
                                      stream: queryProdProductParameterRecord(
                                        queryBuilder:
                                            (prodProductParameterRecord) =>
                                                prodProductParameterRecord
                                                    .where('scr_id',
                                                        isEqualTo: widget.scrID)
                                                    .where('par_select',
                                                        isEqualTo: true)
                                                    .orderBy('par_description'),
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
                                            viewSelectProdProductParameterRecordList =
                                            snapshot.data;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              viewSelectProdProductParameterRecordList
                                                  .length,
                                          itemBuilder:
                                              (context, viewSelectIndex) {
                                            final viewSelectProdProductParameterRecord =
                                                viewSelectProdProductParameterRecordList[
                                                    viewSelectIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 5, 5),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4,
                                                      color: Color(0x19070707),
                                                      offset: Offset(2, 2),
                                                      spreadRadius: 2,
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          urlStringSelect =
                                                              await actions
                                                                  .returnPathImageString(
                                                            viewSelectProdProductParameterRecord
                                                                .parImg,
                                                          );
                                                          await launchURL(
                                                              urlStringSelect);

                                                          setState(() {});
                                                        },
                                                        child: Container(
                                                          width: 75,
                                                          height: 75,
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                                  Image.network(
                                                                viewSelectProdProductParameterRecord
                                                                    .parImg,
                                                              ).image,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      5, 5, 5),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          viewSelectProdProductParameterRecord
                                                                              .parCode,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .subtitle2
                                                                              .override(
                                                                                fontFamily: 'Lexend Deca',
                                                                                fontSize: 11,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        viewSelectProdProductParameterRecord
                                                                            .parProductreference,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              fontSize: 11,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20,
                                                                            0,
                                                                            0,
                                                                            3),
                                                                        child:
                                                                            Text(
                                                                          formatNumber(
                                                                            viewSelectProdProductParameterRecord.parValue,
                                                                            formatType:
                                                                                FormatType.decimal,
                                                                            decimalType:
                                                                                DecimalType.commaDecimal,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText2
                                                                              .override(
                                                                                fontFamily: 'Lexend Deca',
                                                                                color: Color(0xFF1A1F24),
                                                                                fontSize: 11,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.8,
                                                                height: 30,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                ),
                                                                child: Text(
                                                                  viewSelectProdProductParameterRecord
                                                                      .parDescription,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  maxLines: 2,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        fontSize:
                                                                            10,
                                                                      ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            30,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              2,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              if (!(viewSelectProdProductParameterRecord.parSelect) ?? true)
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await actions.selectProduct(
                                                                                      viewSelectProdProductParameterRecord.reference,
                                                                                      viewSelectProdProductParameterRecord.parSelect,
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.check_box_outline_blank_rounded,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              if (viewSelectProdProductParameterRecord.parSelect ?? true)
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await actions.selectProduct(
                                                                                      viewSelectProdProductParameterRecord.reference,
                                                                                      viewSelectProdProductParameterRecord.parSelect,
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.check_box,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: Color(0xFF34CB44),
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    setState(() => FFAppState().imageInsert = true);
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => ProdOperatorImagesWidget(
                                                                                          prodID: viewSelectProdProductParameterRecord.reference,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.image_outlined,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => ProdProductsDetailWidget(
                                                                                          prodID: viewSelectProdProductParameterRecord.reference,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.remove_red_eye_outlined,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => ProdOperatorUpdateWidget(
                                                                                          scrID: widget.scrID,
                                                                                          prodID: viewSelectProdProductParameterRecord.reference,
                                                                                          prodReference: viewSelectProdProductParameterRecord.parProductreference,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_outlined,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 10, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 8,
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5, 0, 0, 0),
                                    child: StreamBuilder<
                                        List<ProdProductParameterRecord>>(
                                      stream: queryProdProductParameterRecord(
                                        queryBuilder:
                                            (prodProductParameterRecord) =>
                                                prodProductParameterRecord
                                                    .where('scr_id',
                                                        isEqualTo: widget.scrID)
                                                    .where('par_select',
                                                        isEqualTo: false)
                                                    .orderBy('par_description'),
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
                                            viewAllProdProductParameterRecordList =
                                            snapshot.data;
                                        return ListView.builder(
                                          padding: EdgeInsets.zero,
                                          shrinkWrap: true,
                                          scrollDirection: Axis.vertical,
                                          itemCount:
                                              viewAllProdProductParameterRecordList
                                                  .length,
                                          itemBuilder: (context, viewAllIndex) {
                                            final viewAllProdProductParameterRecord =
                                                viewAllProdProductParameterRecordList[
                                                    viewAllIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 5, 5, 5),
                                              child: Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 78,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4,
                                                      color: Color(0x19070707),
                                                      offset: Offset(2, 2),
                                                      spreadRadius: 2,
                                                    )
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 10, 0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      InkWell(
                                                        onTap: () async {
                                                          urlStringAll =
                                                              await actions
                                                                  .returnPathImageString(
                                                            viewAllProdProductParameterRecord
                                                                .parImg,
                                                          );
                                                          await launchURL(
                                                              urlStringAll);

                                                          setState(() {});
                                                        },
                                                        child: Container(
                                                          width: 75,
                                                          height: 75,
                                                          decoration:
                                                              BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                              fit: BoxFit.cover,
                                                              image:
                                                                  Image.network(
                                                                viewAllProdProductParameterRecord
                                                                    .parImg,
                                                              ).image,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(5,
                                                                      5, 5, 5),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            Text(
                                                                          viewAllProdProductParameterRecord
                                                                              .parCode,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .subtitle2
                                                                              .override(
                                                                                fontFamily: 'Lexend Deca',
                                                                                fontSize: 11,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        viewAllProdProductParameterRecord
                                                                            .parProductreference,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .subtitle2
                                                                            .override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              fontSize: 11,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            20,
                                                                            0,
                                                                            20,
                                                                            3),
                                                                        child:
                                                                            Text(
                                                                          formatNumber(
                                                                            viewAllProdProductParameterRecord.parValue,
                                                                            formatType:
                                                                                FormatType.custom,
                                                                            currency:
                                                                                'R\$ ',
                                                                            format:
                                                                                '',
                                                                            locale:
                                                                                '',
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.start,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyText2
                                                                              .override(
                                                                                fontFamily: 'Lexend Deca',
                                                                                color: Color(0xFF1A1F24),
                                                                                fontSize: 11,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.8,
                                                                height: 30,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiaryColor,
                                                                ),
                                                                child: Text(
                                                                  viewAllProdProductParameterRecord
                                                                      .parDescription,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  maxLines: 2,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText2
                                                                      .override(
                                                                        fontFamily:
                                                                            'Lexend Deca',
                                                                        fontSize:
                                                                            10,
                                                                      ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            0,
                                                                            30,
                                                                            0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0,
                                                                              2,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              if (!(viewAllProdProductParameterRecord.parSelect) ?? true)
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await actions.selectProduct(
                                                                                      viewAllProdProductParameterRecord.reference,
                                                                                      viewAllProdProductParameterRecord.parSelect,
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.check_box_outline_blank_rounded,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              if (viewAllProdProductParameterRecord.parSelect ?? true)
                                                                                FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await actions.selectProduct(
                                                                                      viewAllProdProductParameterRecord.reference,
                                                                                      viewAllProdProductParameterRecord.parSelect,
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.check_box,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: Color(0xFF34CB44),
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => ProdOperatorImagesWidget(
                                                                                          prodID: viewAllProdProductParameterRecord.reference,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.image_outlined,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => ProdProductsDetailWidget(
                                                                                          prodID: viewAllProdProductParameterRecord.reference,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.remove_red_eye_outlined,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                                                                                child: FFButtonWidget(
                                                                                  onPressed: () async {
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => ProdOperatorUpdateWidget(
                                                                                          scrID: widget.scrID,
                                                                                          prodID: viewAllProdProductParameterRecord.reference,
                                                                                          prodReference: viewAllProdProductParameterRecord.parProductreference,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                  text: '',
                                                                                  icon: Icon(
                                                                                    Icons.keyboard_outlined,
                                                                                    size: 15,
                                                                                  ),
                                                                                  options: FFButtonOptions(
                                                                                    width: 37,
                                                                                    height: 20,
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Lexend Deca',
                                                                                          color: Colors.white,
                                                                                        ),
                                                                                    borderSide: BorderSide(
                                                                                      color: Colors.transparent,
                                                                                      width: 1,
                                                                                    ),
                                                                                    borderRadius: BorderRadius.circular(12),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
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
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 10, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [],
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
            ),
          ),
        );
      },
    );
  }
}
