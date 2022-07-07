import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_classification_record.g.dart';

abstract class ProdClassificationRecord
    implements
        Built<ProdClassificationRecord, ProdClassificationRecordBuilder> {
  static Serializer<ProdClassificationRecord> get serializer =>
      _$prodClassificationRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'cla_classification')
  String get claClassification;

  @nullable
  @BuiltValueField(wireName: 'cla_description')
  String get claDescription;

  @nullable
  @BuiltValueField(wireName: 'cla_about1')
  String get claAbout1;

  @nullable
  @BuiltValueField(wireName: 'cla_about2')
  String get claAbout2;

  @nullable
  @BuiltValueField(wireName: 'cla_image')
  String get claImage;

  @nullable
  @BuiltValueField(wireName: 'ref_id')
  DocumentReference get refId;

  @nullable
  @BuiltValueField(wireName: 'cla_description_start')
  String get claDescriptionStart;

  @nullable
  @BuiltValueField(wireName: 'cla_description_the_end')
  String get claDescriptionTheEnd;

  @nullable
  @BuiltValueField(wireName: 'cla_keyword')
  bool get claKeyword;

  @nullable
  @BuiltValueField(wireName: 'cla_ispartname')
  bool get claIspartname;

  @nullable
  @BuiltValueField(wireName: 'cla_categoria')
  String get claCategoria;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdClassificationRecordBuilder builder) =>
      builder
        ..claClassification = ''
        ..claDescription = ''
        ..claAbout1 = ''
        ..claAbout2 = ''
        ..claImage = ''
        ..claDescriptionStart = ''
        ..claDescriptionTheEnd = ''
        ..claKeyword = false
        ..claIspartname = false
        ..claCategoria = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_classification');

  static Stream<ProdClassificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdClassificationRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdClassificationRecord._();
  factory ProdClassificationRecord(
          [void Function(ProdClassificationRecordBuilder) updates]) =
      _$ProdClassificationRecord;

  static ProdClassificationRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdClassificationRecordData({
  String claClassification,
  String claDescription,
  String claAbout1,
  String claAbout2,
  String claImage,
  DocumentReference refId,
  String claDescriptionStart,
  String claDescriptionTheEnd,
  bool claKeyword,
  bool claIspartname,
  String claCategoria,
}) =>
    serializers.toFirestore(
        ProdClassificationRecord.serializer,
        ProdClassificationRecord((p) => p
          ..claClassification = claClassification
          ..claDescription = claDescription
          ..claAbout1 = claAbout1
          ..claAbout2 = claAbout2
          ..claImage = claImage
          ..refId = refId
          ..claDescriptionStart = claDescriptionStart
          ..claDescriptionTheEnd = claDescriptionTheEnd
          ..claKeyword = claKeyword
          ..claIspartname = claIspartname
          ..claCategoria = claCategoria));
