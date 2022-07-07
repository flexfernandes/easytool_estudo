import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import '../custom_code/actions/index.dart' as actions;
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassificationDetailWidget extends StatefulWidget {
  const ClassificationDetailWidget({
    Key key,
    this.classificationID,
    this.referenciaDescription,
  }) : super(key: key);

  final DocumentReference classificationID;
  final String referenciaDescription;

  @override
  _ClassificationDetailWidgetState createState() =>
      _ClassificationDetailWidgetState();
}

class _ClassificationDetailWidgetState
    extends State<ClassificationDetailWidget> {
  String uploadedFileUrl = '';
  String imageClean;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  bool fazParteNomeValue;
  bool palavraChaveValue;
  TextEditingController textController6;
  TextEditingController textController7;
  String pathDATA;
  String pathLOCAL;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ProdClassificationRecord>(
      stream: ProdClassificationRecord.getDocument(widget.classificationID),
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
        final classificationDetailProdClassificationRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF177AD5),
            automaticallyImplyLeading: false,
            title: Text(
              widget.referenciaDescription,
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 22,
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
                  color: Colors.white,
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
          body: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Form(
                        key: formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(12, 6, 12, 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 5),
                                      child: TextFormField(
                                        controller: textController1 ??=
                                            TextEditingController(
                                          text:
                                              classificationDetailProdClassificationRecord
                                                  .claClassification,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Classificação',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: TextFormField(
                                        controller: textController2 ??=
                                            TextEditingController(
                                          text:
                                              classificationDetailProdClassificationRecord
                                                  .claDescriptionStart,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Início',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: TextFormField(
                                        controller: textController3 ??=
                                            TextEditingController(
                                          text:
                                              classificationDetailProdClassificationRecord
                                                  .claDescription,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Palavra',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 5, 0, 0),
                                      child: TextFormField(
                                        controller: textController4 ??=
                                            TextEditingController(
                                          text:
                                              classificationDetailProdClassificationRecord
                                                  .claDescriptionTheEnd,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Fim',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 5),
                                      child: TextFormField(
                                        controller: textController5 ??=
                                            TextEditingController(
                                          text:
                                              classificationDetailProdClassificationRecord
                                                  .claCategoria,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Categoria Menu',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .gray200,
                                              width: 2,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .tertiaryColor,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .dark600,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: SwitchListTile(
                                      value: palavraChaveValue ??=
                                          classificationDetailProdClassificationRecord
                                              .claKeyword,
                                      onChanged: (newValue) => setState(
                                          () => palavraChaveValue = newValue),
                                      title: Text(
                                        'É uma palavra chave?',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 9,
                                              fontWeight: FontWeight.w100,
                                            ),
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                  Expanded(
                                    child: SwitchListTile(
                                      value: fazParteNomeValue ??=
                                          classificationDetailProdClassificationRecord
                                              .claIspartname,
                                      onChanged: (newValue) => setState(
                                          () => fazParteNomeValue = newValue),
                                      title: Text(
                                        'Faz parte do nome? ',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 9,
                                              fontWeight: FontWeight.w100,
                                            ),
                                      ),
                                      tileColor: Color(0xFFF5F5F5),
                                      dense: false,
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                                child: TextFormField(
                                  controller: textController6 ??=
                                      TextEditingController(
                                    text:
                                        classificationDetailProdClassificationRecord
                                            .claAbout1,
                                  ),
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Sobre 1',
                                    labelStyle:
                                        FlutterFlowTheme.of(context).bodyText1,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Lexend Deca',
                                          lineHeight: 8,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .gray200,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .gray200,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .tertiaryColor,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        color: FlutterFlowTheme.of(context)
                                            .dark600,
                                      ),
                                  textAlign: TextAlign.start,
                                  maxLines: 4,
                                ),
                              ),
                              TextFormField(
                                controller: textController7 ??=
                                    TextEditingController(
                                  text:
                                      classificationDetailProdClassificationRecord
                                          .claAbout2,
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Sobre 2',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        lineHeight: 8,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Lexend Deca',
                                        lineHeight: 8,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).gray200,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).gray200,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .tertiaryColor,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Lexend Deca',
                                      color:
                                          FlutterFlowTheme.of(context).dark600,
                                    ),
                                textAlign: TextAlign.start,
                                maxLines: 2,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 15, 0, 0),
                                    child: Container(
                                      width: 250,
                                      height: 172,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 6, 15, 6),
                                                child: Container(
                                                  width: 160,
                                                  height: 160,
                                                  constraints: BoxConstraints(
                                                    maxWidth: double.infinity,
                                                    maxHeight: double.infinity,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .tertiaryColor,
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        classificationDetailProdClassificationRecord
                                                            .claImage,
                                                      ).image,
                                                    ),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .tertiaryColor,
                                                      width: 1,
                                                    ),
                                                  ),
                                                  child: Image.network(
                                                    uploadedFileUrl,
                                                    width: double.infinity,
                                                    height: double.infinity,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.camera_alt,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiaryColor,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  final selectedMedia =
                                                      await selectMediaWithSourceBottomSheet(
                                                    context: context,
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
                                                    final downloadUrls = (await Future
                                                            .wait(selectedMedia
                                                                .map((m) async =>
                                                                    await uploadData(
                                                                        m.storagePath,
                                                                        m.bytes))))
                                                        .where((u) => u != null)
                                                        .toList();
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .hideCurrentSnackBar();
                                                    if (downloadUrls != null &&
                                                        downloadUrls.length ==
                                                            selectedMedia
                                                                .length) {
                                                      setState(() =>
                                                          uploadedFileUrl =
                                                              downloadUrls
                                                                  .first);
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
                                                },
                                              ),
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30,
                                                borderWidth: 1,
                                                buttonSize: 60,
                                                icon: Icon(
                                                  Icons.delete,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiaryColor,
                                                  size: 30,
                                                ),
                                                onPressed: () async {
                                                  await actions.cleanImage(
                                                    uploadedFileUrl,
                                                  );
                                                  imageClean = await actions
                                                      .returnPathImageString(
                                                    classificationDetailProdClassificationRecord
                                                        .claImage,
                                                  );
                                                  await actions.cleanImage(
                                                    imageClean,
                                                  );

                                                  setState(() {});
                                                },
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 20, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          if ((textController1?.text ??
                                                  '' != null) &&
                                              (textController1?.text ??
                                                  '' != '')) {
                                            if ((textController3?.text ??
                                                    '' != null) &&
                                                (textController3?.text ??
                                                    '' != '')) {
                                              pathDATA = await actions
                                                  .returnPathImageString(
                                                classificationDetailProdClassificationRecord
                                                    .claImage,
                                              );
                                              _shouldSetState = true;
                                              pathLOCAL = await actions
                                                  .returnPathImageString(
                                                uploadedFileUrl,
                                              );
                                              _shouldSetState = true;
                                              if (functions.checkImage(
                                                  uploadedFileUrl)) {
                                                final prodClassificationUpdateData =
                                                    createProdClassificationRecordData(
                                                  claClassification:
                                                      textController1?.text ??
                                                          '',
                                                  claDescription:
                                                      textController3?.text ??
                                                          '',
                                                  claAbout1:
                                                      textController6?.text ??
                                                          '',
                                                  claAbout2:
                                                      textController7?.text ??
                                                          '',
                                                  claImage: uploadedFileUrl,
                                                  claDescriptionStart:
                                                      textController2?.text ??
                                                          '',
                                                  claDescriptionTheEnd:
                                                      textController4?.text ??
                                                          '',
                                                  claKeyword: palavraChaveValue,
                                                  claIspartname:
                                                      fazParteNomeValue,
                                                  claCategoria:
                                                      textController5?.text ??
                                                          '',
                                                );
                                                await classificationDetailProdClassificationRecord
                                                    .reference
                                                    .update(
                                                        prodClassificationUpdateData);
                                                await actions.cleanImage(
                                                  pathDATA,
                                                );
                                                Navigator.pop(context);
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              } else {
                                                final prodClassificationUpdateData =
                                                    createProdClassificationRecordData(
                                                  claClassification:
                                                      textController1?.text ??
                                                          '',
                                                  claDescription:
                                                      textController3?.text ??
                                                          '',
                                                  claAbout1:
                                                      textController6?.text ??
                                                          '',
                                                  claAbout2:
                                                      textController7?.text ??
                                                          '',
                                                  claDescriptionStart:
                                                      textController2?.text ??
                                                          '',
                                                  claDescriptionTheEnd:
                                                      textController4?.text ??
                                                          '',
                                                  claKeyword: palavraChaveValue,
                                                  claIspartname:
                                                      fazParteNomeValue,
                                                  claCategoria:
                                                      textController5?.text ??
                                                          '',
                                                );
                                                await classificationDetailProdClassificationRecord
                                                    .reference
                                                    .update(
                                                        prodClassificationUpdateData);
                                                Navigator.pop(context);
                                              }

                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            } else {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text(
                                                        'Campos obrigatórios'),
                                                    content: Text(
                                                        'Descrição  não pode ficar em branco'),
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
                                            }

                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  content: Text(
                                                      'Classificação não pode ficar em branco'),
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
                                          }

                                          if (_shouldSetState) setState(() {});
                                        },
                                        text: 'Salvar',
                                        icon: Icon(
                                          Icons.check,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 30,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 14,
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
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var confirmDialogResponse =
                                              await showDialog<bool>(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        content: Text(
                                                            'Deseja Realmente Sair'),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    false),
                                                            child: Text('Näo'),
                                                          ),
                                                          TextButton(
                                                            onPressed: () =>
                                                                Navigator.pop(
                                                                    alertDialogContext,
                                                                    true),
                                                            child: Text('Sim'),
                                                          ),
                                                        ],
                                                      );
                                                    },
                                                  ) ??
                                                  false;
                                          if (confirmDialogResponse) {
                                            await actions.cleanImage(
                                              uploadedFileUrl,
                                            );
                                            Navigator.pop(context);
                                            return;
                                          } else {
                                            return;
                                          }
                                        },
                                        text: 'Sair',
                                        icon: Icon(
                                          Icons.close,
                                          size: 15,
                                        ),
                                        options: FFButtonOptions(
                                          width: 130,
                                          height: 30,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 14,
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
