import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_product_parameter_record.g.dart';

abstract class ProdProductParameterRecord
    implements
        Built<ProdProductParameterRecord, ProdProductParameterRecordBuilder> {
  static Serializer<ProdProductParameterRecord> get serializer =>
      _$prodProductParameterRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'scr_id')
  DocumentReference get scrId;

  @nullable
  @BuiltValueField(wireName: 'par_code')
  String get parCode;

  @nullable
  @BuiltValueField(wireName: 'par_productreference')
  String get parProductreference;

  @nullable
  @BuiltValueField(wireName: 'par_description')
  String get parDescription;

  @nullable
  @BuiltValueField(wireName: 'par_context')
  String get parContext;

  @nullable
  @BuiltValueField(wireName: 'par_html')
  String get parHtml;

  @nullable
  @BuiltValueField(wireName: 'par_height')
  double get parHeight;

  @nullable
  @BuiltValueField(wireName: 'par_length')
  double get parLength;

  @nullable
  @BuiltValueField(wireName: 'par_largura')
  double get parLargura;

  @nullable
  @BuiltValueField(wireName: 'par_weight1')
  double get parWeight1;

  @nullable
  @BuiltValueField(wireName: 'par_weight2')
  double get parWeight2;

  @nullable
  @BuiltValueField(wireName: 'par_value')
  double get parValue;

  @nullable
  @BuiltValueField(wireName: 'par_sel01')
  BuiltList<String> get parSel01;

  @nullable
  @BuiltValueField(wireName: 'par_sel02')
  BuiltList<String> get parSel02;

  @nullable
  @BuiltValueField(wireName: 'par_sel03')
  BuiltList<String> get parSel03;

  @nullable
  @BuiltValueField(wireName: 'par_sel04')
  BuiltList<String> get parSel04;

  @nullable
  @BuiltValueField(wireName: 'par_sel05')
  BuiltList<String> get parSel05;

  @nullable
  @BuiltValueField(wireName: 'par_sel06')
  BuiltList<String> get parSel06;

  @nullable
  @BuiltValueField(wireName: 'par_sel07')
  BuiltList<String> get parSel07;

  @nullable
  @BuiltValueField(wireName: 'par_sel08')
  BuiltList<String> get parSel08;

  @nullable
  @BuiltValueField(wireName: 'par_sel09')
  BuiltList<String> get parSel09;

  @nullable
  @BuiltValueField(wireName: 'par_sel10')
  BuiltList<String> get parSel10;

  @nullable
  @BuiltValueField(wireName: 'par_sel11')
  BuiltList<String> get parSel11;

  @nullable
  @BuiltValueField(wireName: 'par_sel12')
  BuiltList<String> get parSel12;

  @nullable
  @BuiltValueField(wireName: 'par_sel13')
  BuiltList<String> get parSel13;

  @nullable
  @BuiltValueField(wireName: 'par_sel14')
  BuiltList<String> get parSel14;

  @nullable
  @BuiltValueField(wireName: 'par_sel15')
  BuiltList<String> get parSel15;

  @nullable
  @BuiltValueField(wireName: 'par_sel16')
  BuiltList<String> get parSel16;

  @nullable
  @BuiltValueField(wireName: 'par_sel17')
  BuiltList<String> get parSel17;

  @nullable
  @BuiltValueField(wireName: 'par_sel18')
  BuiltList<String> get parSel18;

  @nullable
  @BuiltValueField(wireName: 'par_sel19')
  BuiltList<String> get parSel19;

  @nullable
  @BuiltValueField(wireName: 'par_sel20')
  BuiltList<String> get parSel20;

  @nullable
  @BuiltValueField(wireName: 'par_sel21')
  BuiltList<String> get parSel21;

  @nullable
  @BuiltValueField(wireName: 'par_sel22')
  BuiltList<String> get parSel22;

  @nullable
  @BuiltValueField(wireName: 'par_sel23')
  BuiltList<String> get parSel23;

  @nullable
  @BuiltValueField(wireName: 'par_sel24')
  BuiltList<String> get parSel24;

  @nullable
  @BuiltValueField(wireName: 'par_sel25')
  BuiltList<String> get parSel25;

  @nullable
  DateTime get dateCreate;

  @nullable
  @BuiltValueField(wireName: 'par_select')
  bool get parSelect;

  @nullable
  @BuiltValueField(wireName: 'par_dateProcessing')
  DateTime get parDateProcessing;

  @nullable
  @BuiltValueField(wireName: 'par_img')
  String get parImg;

  @nullable
  @BuiltValueField(wireName: 'par_order')
  int get parOrder;

  @nullable
  @BuiltValueField(wireName: 'prod_situacao')
  bool get prodSituacao;

  @nullable
  @BuiltValueField(wireName: 'prod_unidade')
  String get prodUnidade;

  @nullable
  @BuiltValueField(wireName: 'prod_origem')
  String get prodOrigem;

  @nullable
  @BuiltValueField(wireName: 'prod_ncm')
  String get prodNcm;

  @nullable
  @BuiltValueField(wireName: 'prod_cest')
  String get prodCest;

  @nullable
  @BuiltValueField(wireName: 'prod_vrpromocao')
  double get prodVrpromocao;

  @nullable
  @BuiltValueField(wireName: 'prod_estoque')
  double get prodEstoque;

  @nullable
  @BuiltValueField(wireName: 'prod_custo')
  double get prodCusto;

  @nullable
  @BuiltValueField(wireName: 'prod_estminimo')
  double get prodEstminimo;

  @nullable
  @BuiltValueField(wireName: 'prod_estmaximo')
  double get prodEstmaximo;

  @nullable
  @BuiltValueField(wireName: 'prod_fretegratis')
  bool get prodFretegratis;

  @nullable
  @BuiltValueField(wireName: 'prod_linkvideo')
  String get prodLinkvideo;

  @nullable
  @BuiltValueField(wireName: 'prod_marca')
  String get prodMarca;

  @nullable
  @BuiltValueField(wireName: 'prod_palavraschave')
  BuiltList<String> get prodPalavraschave;

  @nullable
  @BuiltValueField(wireName: 'prod_categorias')
  String get prodCategorias;

  @nullable
  @BuiltValueField(wireName: 'prod_complemento')
  String get prodComplemento;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdProductParameterRecordBuilder builder) =>
      builder
        ..parCode = ''
        ..parProductreference = ''
        ..parDescription = ''
        ..parContext = ''
        ..parHtml = ''
        ..parHeight = 0.0
        ..parLength = 0.0
        ..parLargura = 0.0
        ..parWeight1 = 0.0
        ..parWeight2 = 0.0
        ..parValue = 0.0
        ..parSel01 = ListBuilder()
        ..parSel02 = ListBuilder()
        ..parSel03 = ListBuilder()
        ..parSel04 = ListBuilder()
        ..parSel05 = ListBuilder()
        ..parSel06 = ListBuilder()
        ..parSel07 = ListBuilder()
        ..parSel08 = ListBuilder()
        ..parSel09 = ListBuilder()
        ..parSel10 = ListBuilder()
        ..parSel11 = ListBuilder()
        ..parSel12 = ListBuilder()
        ..parSel13 = ListBuilder()
        ..parSel14 = ListBuilder()
        ..parSel15 = ListBuilder()
        ..parSel16 = ListBuilder()
        ..parSel17 = ListBuilder()
        ..parSel18 = ListBuilder()
        ..parSel19 = ListBuilder()
        ..parSel20 = ListBuilder()
        ..parSel21 = ListBuilder()
        ..parSel22 = ListBuilder()
        ..parSel23 = ListBuilder()
        ..parSel24 = ListBuilder()
        ..parSel25 = ListBuilder()
        ..parSelect = false
        ..parImg = ''
        ..parOrder = 0
        ..prodSituacao = false
        ..prodUnidade = ''
        ..prodOrigem = ''
        ..prodNcm = ''
        ..prodCest = ''
        ..prodVrpromocao = 0.0
        ..prodEstoque = 0.0
        ..prodCusto = 0.0
        ..prodEstminimo = 0.0
        ..prodEstmaximo = 0.0
        ..prodFretegratis = false
        ..prodLinkvideo = ''
        ..prodMarca = ''
        ..prodPalavraschave = ListBuilder()
        ..prodCategorias = ''
        ..prodComplemento = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_product_parameter');

  static Stream<ProdProductParameterRecord> getDocument(
          DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdProductParameterRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdProductParameterRecord._();
  factory ProdProductParameterRecord(
          [void Function(ProdProductParameterRecordBuilder) updates]) =
      _$ProdProductParameterRecord;

  static ProdProductParameterRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdProductParameterRecordData({
  DocumentReference scrId,
  String parCode,
  String parProductreference,
  String parDescription,
  String parContext,
  String parHtml,
  double parHeight,
  double parLength,
  double parLargura,
  double parWeight1,
  double parWeight2,
  double parValue,
  DateTime dateCreate,
  bool parSelect,
  DateTime parDateProcessing,
  String parImg,
  int parOrder,
  bool prodSituacao,
  String prodUnidade,
  String prodOrigem,
  String prodNcm,
  String prodCest,
  double prodVrpromocao,
  double prodEstoque,
  double prodCusto,
  double prodEstminimo,
  double prodEstmaximo,
  bool prodFretegratis,
  String prodLinkvideo,
  String prodMarca,
  String prodCategorias,
  String prodComplemento,
}) =>
    serializers.toFirestore(
        ProdProductParameterRecord.serializer,
        ProdProductParameterRecord((p) => p
          ..scrId = scrId
          ..parCode = parCode
          ..parProductreference = parProductreference
          ..parDescription = parDescription
          ..parContext = parContext
          ..parHtml = parHtml
          ..parHeight = parHeight
          ..parLength = parLength
          ..parLargura = parLargura
          ..parWeight1 = parWeight1
          ..parWeight2 = parWeight2
          ..parValue = parValue
          ..parSel01 = null
          ..parSel02 = null
          ..parSel03 = null
          ..parSel04 = null
          ..parSel05 = null
          ..parSel06 = null
          ..parSel07 = null
          ..parSel08 = null
          ..parSel09 = null
          ..parSel10 = null
          ..parSel11 = null
          ..parSel12 = null
          ..parSel13 = null
          ..parSel14 = null
          ..parSel15 = null
          ..parSel16 = null
          ..parSel17 = null
          ..parSel18 = null
          ..parSel19 = null
          ..parSel20 = null
          ..parSel21 = null
          ..parSel22 = null
          ..parSel23 = null
          ..parSel24 = null
          ..parSel25 = null
          ..dateCreate = dateCreate
          ..parSelect = parSelect
          ..parDateProcessing = parDateProcessing
          ..parImg = parImg
          ..parOrder = parOrder
          ..prodSituacao = prodSituacao
          ..prodUnidade = prodUnidade
          ..prodOrigem = prodOrigem
          ..prodNcm = prodNcm
          ..prodCest = prodCest
          ..prodVrpromocao = prodVrpromocao
          ..prodEstoque = prodEstoque
          ..prodCusto = prodCusto
          ..prodEstminimo = prodEstminimo
          ..prodEstmaximo = prodEstmaximo
          ..prodFretegratis = prodFretegratis
          ..prodLinkvideo = prodLinkvideo
          ..prodMarca = prodMarca
          ..prodPalavraschave = null
          ..prodCategorias = prodCategorias
          ..prodComplemento = prodComplemento));
