import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_script_reference_record.g.dart';

abstract class ProdScriptReferenceRecord
    implements
        Built<ProdScriptReferenceRecord, ProdScriptReferenceRecordBuilder> {
  static Serializer<ProdScriptReferenceRecord> get serializer =>
      _$prodScriptReferenceRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'scr_ref_description')
  String get scrRefDescription;

  @nullable
  @BuiltValueField(wireName: 'scr_ref_classification')
  String get scrRefClassification;

  @nullable
  @BuiltValueField(wireName: 'scr_id')
  DocumentReference get scrId;

  @nullable
  @BuiltValueField(wireName: 'ref_id')
  DocumentReference get refId;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdScriptReferenceRecordBuilder builder) =>
      builder
        ..scrRefDescription = ''
        ..scrRefClassification = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_script_reference');

  static Stream<ProdScriptReferenceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdScriptReferenceRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdScriptReferenceRecord._();
  factory ProdScriptReferenceRecord(
          [void Function(ProdScriptReferenceRecordBuilder) updates]) =
      _$ProdScriptReferenceRecord;

  static ProdScriptReferenceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdScriptReferenceRecordData({
  String scrRefDescription,
  String scrRefClassification,
  DocumentReference scrId,
  DocumentReference refId,
}) =>
    serializers.toFirestore(
        ProdScriptReferenceRecord.serializer,
        ProdScriptReferenceRecord((p) => p
          ..scrRefDescription = scrRefDescription
          ..scrRefClassification = scrRefClassification
          ..scrId = scrId
          ..refId = refId));
