import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_error_record.g.dart';

abstract class ProdErrorRecord
    implements Built<ProdErrorRecord, ProdErrorRecordBuilder> {
  static Serializer<ProdErrorRecord> get serializer =>
      _$prodErrorRecordSerializer;

  @nullable
  String get error;

  @nullable
  DateTime get date;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdErrorRecordBuilder builder) =>
      builder..error = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_error');

  static Stream<ProdErrorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdErrorRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdErrorRecord._();
  factory ProdErrorRecord([void Function(ProdErrorRecordBuilder) updates]) =
      _$ProdErrorRecord;

  static ProdErrorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdErrorRecordData({
  String error,
  DateTime date,
}) =>
    serializers.toFirestore(
        ProdErrorRecord.serializer,
        ProdErrorRecord((p) => p
          ..error = error
          ..date = date));
