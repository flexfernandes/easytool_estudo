import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_tempo_record.g.dart';

abstract class ProdTempoRecord
    implements Built<ProdTempoRecord, ProdTempoRecordBuilder> {
  static Serializer<ProdTempoRecord> get serializer =>
      _$prodTempoRecordSerializer;

  @nullable
  DocumentReference get proparID;

  @nullable
  DateTime get datecreator;

  @nullable
  @BuiltValueField(wireName: 'field_01_01')
  String get field0101;

  @nullable
  @BuiltValueField(wireName: 'field_01_02')
  String get field0102;

  @nullable
  @BuiltValueField(wireName: 'field_02_01')
  String get field0201;

  @nullable
  @BuiltValueField(wireName: 'field_02_02')
  String get field0202;

  @nullable
  @BuiltValueField(wireName: 'field_03_01')
  String get field0301;

  @nullable
  @BuiltValueField(wireName: 'field_03_02')
  String get field0302;

  @nullable
  @BuiltValueField(wireName: 'title_01')
  String get title01;

  @nullable
  @BuiltValueField(wireName: 'title_02')
  String get title02;

  @nullable
  @BuiltValueField(wireName: 'title_03')
  String get title03;

  @nullable
  int get controler;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdTempoRecordBuilder builder) => builder
    ..field0101 = ''
    ..field0102 = ''
    ..field0201 = ''
    ..field0202 = ''
    ..field0301 = ''
    ..field0302 = ''
    ..title01 = ''
    ..title02 = ''
    ..title03 = ''
    ..controler = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_tempo');

  static Stream<ProdTempoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdTempoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdTempoRecord._();
  factory ProdTempoRecord([void Function(ProdTempoRecordBuilder) updates]) =
      _$ProdTempoRecord;

  static ProdTempoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdTempoRecordData({
  DocumentReference proparID,
  DateTime datecreator,
  String field0101,
  String field0102,
  String field0201,
  String field0202,
  String field0301,
  String field0302,
  String title01,
  String title02,
  String title03,
  int controler,
}) =>
    serializers.toFirestore(
        ProdTempoRecord.serializer,
        ProdTempoRecord((p) => p
          ..proparID = proparID
          ..datecreator = datecreator
          ..field0101 = field0101
          ..field0102 = field0102
          ..field0201 = field0201
          ..field0202 = field0202
          ..field0301 = field0301
          ..field0302 = field0302
          ..title01 = title01
          ..title02 = title02
          ..title03 = title03
          ..controler = controler));
