import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_script_record.g.dart';

abstract class ProdScriptRecord
    implements Built<ProdScriptRecord, ProdScriptRecordBuilder> {
  static Serializer<ProdScriptRecord> get serializer =>
      _$prodScriptRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'scr_script')
  String get scrScript;

  @nullable
  @BuiltValueField(wireName: 'scr_description')
  String get scrDescription;

  @nullable
  @BuiltValueField(wireName: 'scr_description_type')
  String get scrDescriptionType;

  @nullable
  @BuiltValueField(wireName: 'scr_surname_type')
  String get scrSurnameType;

  @nullable
  @BuiltValueField(wireName: 'scr_about1')
  String get scrAbout1;

  @nullable
  @BuiltValueField(wireName: 'scr_image')
  String get scrImage;

  @nullable
  @BuiltValueField(wireName: 'scr_ispartname')
  bool get scrIspartname;

  @nullable
  @BuiltValueField(wireName: 'scr_keyword')
  bool get scrKeyword;

  @nullable
  @BuiltValueField(wireName: 'scr_tratativa')
  String get scrTratativa;

  @nullable
  @BuiltValueField(wireName: 'scr_categoria')
  String get scrCategoria;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdScriptRecordBuilder builder) => builder
    ..scrScript = ''
    ..scrDescription = ''
    ..scrDescriptionType = ''
    ..scrSurnameType = ''
    ..scrAbout1 = ''
    ..scrImage = ''
    ..scrIspartname = false
    ..scrKeyword = false
    ..scrTratativa = ''
    ..scrCategoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_script');

  static Stream<ProdScriptRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdScriptRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdScriptRecord._();
  factory ProdScriptRecord([void Function(ProdScriptRecordBuilder) updates]) =
      _$ProdScriptRecord;

  static ProdScriptRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdScriptRecordData({
  String scrScript,
  String scrDescription,
  String scrDescriptionType,
  String scrSurnameType,
  String scrAbout1,
  String scrImage,
  bool scrIspartname,
  bool scrKeyword,
  String scrTratativa,
  String scrCategoria,
}) =>
    serializers.toFirestore(
        ProdScriptRecord.serializer,
        ProdScriptRecord((p) => p
          ..scrScript = scrScript
          ..scrDescription = scrDescription
          ..scrDescriptionType = scrDescriptionType
          ..scrSurnameType = scrSurnameType
          ..scrAbout1 = scrAbout1
          ..scrImage = scrImage
          ..scrIspartname = scrIspartname
          ..scrKeyword = scrKeyword
          ..scrTratativa = scrTratativa
          ..scrCategoria = scrCategoria));
