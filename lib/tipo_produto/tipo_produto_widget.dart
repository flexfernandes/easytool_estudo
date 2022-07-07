import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
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

class TipoProdutoWidget extends StatefulWidget {
  const TipoProdutoWidget({
    Key key,
    this.scrID,
  }) : super(key: key);

  final DocumentReference scrID;

  @override
  _TipoProdutoWidgetState createState() => _TipoProdutoWidgetState();
}

class _TipoProdutoWidgetState extends State<TipoProdutoWidget> {
  String uploadedFileUrl = '';
  String imageClean;
  String choiceChipsValue;
  TextEditingController descriptionTypeController;
  TextEditingController surNameController;
  TextEditingController textController2;
  TextEditingController textController1;
  TextEditingController textController5;
  bool fazParteNomeValue;
  bool palavraChaveValue;
  TextEditingController textController6;
  String pathDATA;
  String pathLOCAL;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
        final tipoProdutoProdScriptRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            backgroundColor: Color(0xFF177AD5),
            automaticallyImplyLeading: false,
            title: Text(
              tipoProdutoProdScriptRecord.scrDescription,
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 20,
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
                                          text: tipoProdutoProdScriptRecord
                                              .scrScript,
                                        ),
                                        readOnly: true,
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
                                          0, 5, 5, 5),
                                      child: TextFormField(
                                        controller: textController2 ??=
                                            TextEditingController(
                                          text: tipoProdutoProdScriptRecord
                                              .scrDescription,
                                        ),
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Descrição',
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
                                          0, 5, 0, 5),
                                      child: TextFormField(
                                        controller: surNameController ??=
                                            TextEditingController(
                                          text: tipoProdutoProdScriptRecord
                                              .scrSurnameType,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Apelido',
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
                                          0, 5, 0, 5),
                                      child: TextFormField(
                                        controller:
                                            descriptionTypeController ??=
                                                TextEditingController(
                                          text: tipoProdutoProdScriptRecord
                                              .scrDescriptionType,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText:
                                              'Descrição de exibição no site',
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
                                          25, 0, 0, 0),
                                      child: FlutterFlowChoiceChips(
                                        initiallySelected:
                                            choiceChipsValue != null
                                                ? [choiceChipsValue]
                                                : [
                                                    tipoProdutoProdScriptRecord
                                                        .scrTratativa
                                                  ],
                                        options: [
                                          ChipData('este'),
                                          ChipData('esta')
                                        ],
                                        onChanged: (val) => setState(
                                            () => choiceChipsValue = val.first),
                                        selectedChipStyle: ChipStyle(
                                          backgroundColor: Color(0xFF49C213),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                  ),
                                          iconColor: Colors.white,
                                          iconSize: 18,
                                          elevation: 4,
                                        ),
                                        unselectedChipStyle: ChipStyle(
                                          backgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryColor,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiaryColor,
                                              ),
                                          iconColor: Color(0xFF323B45),
                                          iconSize: 18,
                                          elevation: 4,
                                        ),
                                        chipSpacing: 20,
                                        multiselect: false,
                                        initialized: choiceChipsValue != null,
                                        alignment: WrapAlignment.start,
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
                                          text: tipoProdutoProdScriptRecord
                                              .scrCategoria,
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
                                          tipoProdutoProdScriptRecord
                                              .scrKeyword,
                                      onChanged: (newValue) => setState(
                                          () => palavraChaveValue = newValue),
                                      title: Text(
                                        'É uma palavra chave?',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 11,
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
                                          tipoProdutoProdScriptRecord
                                              .scrIspartname,
                                      onChanged: (newValue) => setState(
                                          () => fazParteNomeValue = newValue),
                                      title: Text(
                                        'Faz parte do nome? ',
                                        style: FlutterFlowTheme.of(context)
                                            .title3
                                            .override(
                                              fontFamily: 'Lexend Deca',
                                              fontSize: 11,
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
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 10, 0, 5),
                                      child: TextFormField(
                                        controller: textController6 ??=
                                            TextEditingController(
                                          text: tipoProdutoProdScriptRecord
                                              .scrAbout1,
                                        ),
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Sobre',
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1,
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    lineHeight: 8,
                                                  ),
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
                                        textAlign: TextAlign.start,
                                        maxLines: 4,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: 250,
                                      height: 164,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xFF676464),
                                          )
                                        ],
                                        borderRadius: BorderRadius.circular(6),
                                        border: Border.all(
                                          color: Color(0xFFDBE2E7),
                                          width: 1,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(5, 6, 0, 3),
                                                child: Container(
                                                  width: 150,
                                                  height: 150,
                                                  constraints: BoxConstraints(
                                                    maxWidth: double.infinity,
                                                    maxHeight: double.infinity,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      fit: BoxFit.cover,
                                                      image: Image.network(
                                                        tipoProdutoProdScriptRecord
                                                            .scrImage,
                                                      ).image,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .tertiaryColor,
                                                      )
                                                    ],
                                                    border: Border.all(
                                                      color: Color(0xFFFBFBFB),
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
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    20, 0, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
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
                                                      if (downloadUrls !=
                                                              null &&
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
                                                  borderColor:
                                                      Colors.transparent,
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
                                                      tipoProdutoProdScriptRecord
                                                          .scrImage,
                                                    );
                                                    await actions.cleanImage(
                                                      imageClean,
                                                    );

                                                    setState(() {});
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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
                                            if ((textController2?.text ??
                                                    '' != null) &&
                                                (textController2?.text ??
                                                    '' != '')) {
                                              pathDATA = await actions
                                                  .returnPathImageString(
                                                tipoProdutoProdScriptRecord
                                                    .scrImage,
                                              );
                                              _shouldSetState = true;
                                              pathLOCAL = await actions
                                                  .returnPathImageString(
                                                uploadedFileUrl,
                                              );
                                              _shouldSetState = true;
                                              if (functions.checkImage(
                                                  uploadedFileUrl)) {
                                                final prodScriptUpdateData =
                                                    createProdScriptRecordData(
                                                  scrScript:
                                                      textController1?.text ??
                                                          '',
                                                  scrDescription:
                                                      textController2?.text ??
                                                          '',
                                                  scrAbout1:
                                                      textController6?.text ??
                                                          '',
                                                  scrImage: uploadedFileUrl,
                                                  scrKeyword: palavraChaveValue,
                                                  scrIspartname:
                                                      fazParteNomeValue,
                                                  scrDescriptionType:
                                                      descriptionTypeController
                                                              ?.text ??
                                                          '',
                                                  scrSurnameType:
                                                      surNameController?.text ??
                                                          '',
                                                  scrTratativa:
                                                      choiceChipsValue,
                                                  scrCategoria:
                                                      textController5?.text ??
                                                          '',
                                                );
                                                await tipoProdutoProdScriptRecord
                                                    .reference
                                                    .update(
                                                        prodScriptUpdateData);
                                                await actions.cleanImage(
                                                  pathDATA,
                                                );
                                                Navigator.pop(context);
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              } else {
                                                final prodScriptUpdateData =
                                                    createProdScriptRecordData(
                                                  scrScript:
                                                      textController1?.text ??
                                                          '',
                                                  scrDescription:
                                                      textController2?.text ??
                                                          '',
                                                  scrAbout1:
                                                      textController6?.text ??
                                                          '',
                                                  scrIspartname:
                                                      fazParteNomeValue,
                                                  scrKeyword: palavraChaveValue,
                                                  scrDescriptionType:
                                                      descriptionTypeController
                                                              ?.text ??
                                                          '',
                                                  scrSurnameType:
                                                      surNameController?.text ??
                                                          '',
                                                  scrTratativa:
                                                      choiceChipsValue,
                                                  scrCategoria:
                                                      textController5?.text ??
                                                          '',
                                                );
                                                await tipoProdutoProdScriptRecord
                                                    .reference
                                                    .update(
                                                        prodScriptUpdateData);
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
