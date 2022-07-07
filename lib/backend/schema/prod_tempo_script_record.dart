import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_tempo_script_record.g.dart';

abstract class ProdTempoScriptRecord
    implements Built<ProdTempoScriptRecord, ProdTempoScriptRecordBuilder> {
  static Serializer<ProdTempoScriptRecord> get serializer =>
      _$prodTempoScriptRecordSerializer;

  @nullable
  DocumentReference get temID;

  @nullable
  DocumentReference get proparID;

  @nullable
  DocumentReference get refID;

  @nullable
  DocumentReference get scrID;

  @nullable
  DocumentReference get scrrefID;

  @nullable
  DocumentReference get claID;

  @nullable
  int get order;

  @nullable
  int get orderscript;

  @nullable
  @BuiltValueField(wireName: 'cla_description')
  String get claDescription;

  @nullable
  DateTime get datecreator;

  @nullable
  int get controler;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdTempoScriptRecordBuilder builder) =>
      builder
        ..order = 0
        ..orderscript = 0
        ..claDescription = ''
        ..controler = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_tempo_script');

  static Stream<ProdTempoScriptRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdTempoScriptRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdTempoScriptRecord._();
  factory ProdTempoScriptRecord(
          [void Function(ProdTempoScriptRecordBuilder) updates]) =
      _$ProdTempoScriptRecord;

  static ProdTempoScriptRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdTempoScriptRecordData({
  DocumentReference temID,
  DocumentReference proparID,
  DocumentReference refID,
  DocumentReference scrID,
  DocumentReference scrrefID,
  DocumentReference claID,
  int order,
  int orderscript,
  String claDescription,
  DateTime datecreator,
  int controler,
}) =>
    serializers.toFirestore(
        ProdTempoScriptRecord.serializer,
        ProdTempoScriptRecord((p) => p
          ..temID = temID
          ..proparID = proparID
          ..refID = refID
          ..scrID = scrID
          ..scrrefID = scrrefID
          ..claID = claID
          ..order = order
          ..orderscript = orderscript
          ..claDescription = claDescription
          ..datecreator = datecreator
          ..controler = controler));
