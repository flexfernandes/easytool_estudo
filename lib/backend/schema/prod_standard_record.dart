import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_standard_record.g.dart';

abstract class ProdStandardRecord
    implements Built<ProdStandardRecord, ProdStandardRecordBuilder> {
  static Serializer<ProdStandardRecord> get serializer =>
      _$prodStandardRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'sta_page01')
  String get staPage01;

  @nullable
  @BuiltValueField(wireName: 'sta_page01_01')
  String get staPage0101;

  @nullable
  @BuiltValueField(wireName: 'sta_page01_02')
  String get staPage0102;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdStandardRecordBuilder builder) => builder
    ..staPage01 = ''
    ..staPage0101 = ''
    ..staPage0102 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_standard');

  static Stream<ProdStandardRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdStandardRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdStandardRecord._();
  factory ProdStandardRecord(
          [void Function(ProdStandardRecordBuilder) updates]) =
      _$ProdStandardRecord;

  static ProdStandardRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdStandardRecordData({
  String staPage01,
  String staPage0101,
  String staPage0102,
}) =>
    serializers.toFirestore(
        ProdStandardRecord.serializer,
        ProdStandardRecord((p) => p
          ..staPage01 = staPage01
          ..staPage0101 = staPage0101
          ..staPage0102 = staPage0102));
