import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ProdOperatorImagesWidget extends StatefulWidget {
  const ProdOperatorImagesWidget({
    Key key,
    this.prodID,
  }) : super(key: key);

  final DocumentReference prodID;

  @override
  _ProdOperatorImagesWidgetState createState() =>
      _ProdOperatorImagesWidgetState();
}

class _ProdOperatorImagesWidgetState extends State<ProdOperatorImagesWidget> {
  String uploadedFileUrl = '';
  String img;
  String urlString;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProdProductParameterRecord>(
      stream: ProdProductParameterRecord.getDocument(widget.prodID),
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
        final prodOperatorImagesProdProductParameterRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryColor,
            automaticallyImplyLeading: false,
            title: Text(
              'Produtos Imagens',
              style: FlutterFlowTheme.of(context).title3.override(
                    fontFamily: 'Lexend Deca',
                    color: FlutterFlowTheme.of(context).tertiaryColor,
                  ),
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
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              prodOperatorImagesProdProductParameterRecord
                                  .parCode,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 12,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: Text(
                                prodOperatorImagesProdProductParameterRecord
                                    .parProductreference,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              prodOperatorImagesProdProductParameterRecord
                                  .parDescription,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Lexend Deca',
                                    fontSize: 12,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 1,
                        decoration: BoxDecoration(),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                StreamBuilder<List<ProdProductImageRecord>>(
                                  stream: queryProdProductImageRecord(
                                    parent: widget.prodID,
                                    queryBuilder: (prodProductImageRecord) =>
                                        prodProductImageRecord
                                            .where('prodID',
                                                isEqualTo: widget.prodID)
                                            .orderBy('img_order')
                                            .orderBy('img_create'),
                                  ),
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
                                    List<ProdProductImageRecord>
                                        listViewProdProductImageRecordList =
                                        snapshot.data;
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount:
                                          listViewProdProductImageRecordList
                                              .length,
                                      itemBuilder: (context, listViewIndex) {
                                        final listViewProdProductImageRecord =
                                            listViewProdProductImageRecordList[
                                                listViewIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 5, 5, 5),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.85,
                                            height: 75,
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
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                InkWell(
                                                  onTap: () async {
                                                    urlString = await actions
                                                        .returnPathImageString(
                                                      listViewProdProductImageRecord
                                                          .imgImage,
                                                    );
                                                    await launchURL(urlString);

                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 75,
                                                    height: 75,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        fit: BoxFit.cover,
                                                        image: Image.network(
                                                          listViewProdProductImageRecord
                                                              .imgImage,
                                                        ).image,
                                                      ),
                                                      shape: BoxShape.rectangle,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(5, 5, 5, 5),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        30,
                                                                        0),
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
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          0,
                                                                          0,
                                                                          30),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        dateTimeFormat(
                                                                            'd/M H:mm',
                                                                            listViewProdProductImageRecord.imgCreate),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1
                                                                            .override(
                                                                              fontFamily: 'Lexend Deca',
                                                                              fontSize: 10,
                                                                            ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    if (listViewProdProductImageRecord
                                                                            .imgActive ??
                                                                        true)
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            await actions.selectProductImage(
                                                                              listViewProdProductImageRecord.reference,
                                                                              listViewProdProductImageRecord.imgActive,
                                                                              'img_active',
                                                                              widget.prodID,
                                                                              '  ',
                                                                            );
                                                                          },
                                                                          text:
                                                                              'Ativa',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check_box,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                80,
                                                                            height:
                                                                                23,
                                                                            color:
                                                                                Color(0xFF34CB44),
                                                                            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Lexend Deca',
                                                                                  color: Colors.white,
                                                                                  fontSize: 6,
                                                                                  fontWeight: FontWeight.w200,
                                                                                ),
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (!(listViewProdProductImageRecord
                                                                            .imgActive) ??
                                                                        true)
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            await actions.selectProductImage(
                                                                              listViewProdProductImageRecord.reference,
                                                                              listViewProdProductImageRecord.imgActive,
                                                                              'img_active',
                                                                              widget.prodID,
                                                                              ' ',
                                                                            );
                                                                          },
                                                                          text:
                                                                              'Ativa',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check_box_outline_blank_rounded,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                80,
                                                                            height:
                                                                                23,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).grayIcon,
                                                                            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Lexend Deca',
                                                                                  color: FlutterFlowTheme.of(context).tertiaryColor,
                                                                                  fontSize: 8,
                                                                                  fontWeight: FontWeight.w200,
                                                                                ),
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (listViewProdProductImageRecord
                                                                            .imgFrontcover ??
                                                                        true)
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            await actions.selectProductImage(
                                                                              listViewProdProductImageRecord.reference,
                                                                              listViewProdProductImageRecord.imgFrontcover,
                                                                              'img_frontcover',
                                                                              widget.prodID,
                                                                              ' ',
                                                                            );
                                                                          },
                                                                          text:
                                                                              'Capa',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check_box,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                80,
                                                                            height:
                                                                                23,
                                                                            color:
                                                                                Color(0xFF34CB44),
                                                                            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Lexend Deca',
                                                                                  color: Colors.white,
                                                                                  fontSize: 8,
                                                                                  fontWeight: FontWeight.w200,
                                                                                ),
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (!(listViewProdProductImageRecord
                                                                            .imgFrontcover) ??
                                                                        true)
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            await actions.selectProductImage(
                                                                              listViewProdProductImageRecord.reference,
                                                                              listViewProdProductImageRecord.imgFrontcover,
                                                                              'img_frontcover',
                                                                              widget.prodID,
                                                                              listViewProdProductImageRecord.imgImage,
                                                                            );
                                                                          },
                                                                          text:
                                                                              'Capa',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.check_box_outline_blank,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                80,
                                                                            height:
                                                                                23,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).grayIcon,
                                                                            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Lexend Deca',
                                                                                  color: Colors.white,
                                                                                  fontSize: 8,
                                                                                  fontWeight: FontWeight.w200,
                                                                                ),
                                                                            borderSide:
                                                                                BorderSide(
                                                                              color: Colors.transparent,
                                                                              width: 1,
                                                                            ),
                                                                            borderRadius:
                                                                                BorderRadius.circular(12),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    if (!(listViewProdProductImageRecord
                                                                            .imgActive) ??
                                                                        true)
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0,
                                                                            0,
                                                                            10,
                                                                            0),
                                                                        child:
                                                                            FFButtonWidget(
                                                                          onPressed:
                                                                              () async {
                                                                            var _shouldSetState =
                                                                                false;
                                                                            var confirmDialogResponse = await showDialog<bool>(
                                                                                  context: context,
                                                                                  builder: (alertDialogContext) {
                                                                                    return AlertDialog(
                                                                                      title: Text('Apaga Imagem'),
                                                                                      content: Text('Deseja Realmente Apagar?'),
                                                                                      actions: [
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                          child: Text('Cancelar'),
                                                                                        ),
                                                                                        TextButton(
                                                                                          onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                          child: Text('Apagar'),
                                                                                        ),
                                                                                      ],
                                                                                    );
                                                                                  },
                                                                                ) ??
                                                                                false;
                                                                            if (confirmDialogResponse) {
                                                                              img = await actions.returnPathImageString(
                                                                                listViewProdProductImageRecord.imgImage,
                                                                              );
                                                                              _shouldSetState = true;
                                                                              await actions.cleanImage(
                                                                                img,
                                                                              );
                                                                              await listViewProdProductImageRecord.reference.delete();
                                                                              if (_shouldSetState)
                                                                                setState(() {});
                                                                              return;
                                                                            } else {
                                                                              if (_shouldSetState)
                                                                                setState(() {});
                                                                              return;
                                                                            }

                                                                            if (_shouldSetState)
                                                                              setState(() {});
                                                                          },
                                                                          text:
                                                                              '',
                                                                          icon:
                                                                              Icon(
                                                                            Icons.delete_forever,
                                                                            size:
                                                                                15,
                                                                          ),
                                                                          options:
                                                                              FFButtonOptions(
                                                                            width:
                                                                                38,
                                                                            height:
                                                                                23,
                                                                            color:
                                                                                Color(0xFF34CB44),
                                                                            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                  fontFamily: 'Lexend Deca',
                                                                                  color: Colors.white,
                                                                                  fontSize: 8,
                                                                                  fontWeight: FontWeight.w200,
                                                                                ),
                                                                            borderSide:
                                                                                BorderSide(
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
                                                              ],
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
                                        );
                                      },
                                    );
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () async {
                                          final selectedMedia =
                                              await selectMediaWithSourceBottomSheet(
                                            context: context,
                                            imageQuality: 100,
                                            allowPhoto: true,
                                          );
                                          if (selectedMedia != null &&
                                              selectedMedia.every((m) =>
                                                  validateFileFormat(
                                                      m.storagePath,
                                                      context))) {
                                            showUploadMessage(
                                              context,
                                              'Uploading file...',
                                              showLoading: true,
                                            );
                                            final downloadUrls =
                                                (await Future.wait(selectedMedia
                                                        .map((m) async =>
                                                            await uploadData(
                                                                m.storagePath,
                                                                m.bytes))))
                                                    .where((u) => u != null)
                                                    .toList();
                                            ScaffoldMessenger.of(context)
                                                .hideCurrentSnackBar();
                                            if (downloadUrls != null &&
                                                downloadUrls.length ==
                                                    selectedMedia.length) {
                                              setState(() => uploadedFileUrl =
                                                  downloadUrls.first);
                                              showUploadMessage(
                                                context,
                                                'Success!',
                                              );
                                            } else {
                                              showUploadMessage(
                                                context,
                                                'Failed to upload media',
                                              );
                                              return;
                                            }
                                          }

                                          if ((uploadedFileUrl != null) &&
                                              (uploadedFileUrl != '')) {
                                            final prodProductImageCreateData =
                                                createProdProductImageRecordData(
                                              imgFrontcover: false,
                                              imgActive: false,
                                              prodID: widget.prodID,
                                              imgImage: uploadedFileUrl,
                                              imgCreate: getCurrentTimestamp,
                                              imgOrder: 99,
                                            );
                                            await ProdProductImageRecord.createDoc(
                                                    prodOperatorImagesProdProductParameterRecord
                                                        .reference)
                                                .set(
                                                    prodProductImageCreateData);
                                          } else {
                                            return;
                                          }
                                        },
                                        text: 'Add',
                                        icon: Icon(
                                          Icons.camera_alt_outlined,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          width: 100,
                                          height: 30,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
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
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
