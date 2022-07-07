import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_referece_record.g.dart';

abstract class ProdRefereceRecord
    implements Built<ProdRefereceRecord, ProdRefereceRecordBuilder> {
  static Serializer<ProdRefereceRecord> get serializer =>
      _$prodRefereceRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'ref_reference')
  String get refReference;

  @nullable
  @BuiltValueField(wireName: 'ref_description')
  String get refDescription;

  @nullable
  @BuiltValueField(wireName: 'ref_about')
  String get refAbout;

  @nullable
  @BuiltValueField(wireName: 'ref_image')
  String get refImage;

  @nullable
  @BuiltValueField(wireName: 'ref_title_field1')
  String get refTitleField1;

  @nullable
  @BuiltValueField(wireName: 'ref_title_field2')
  String get refTitleField2;

  @nullable
  @BuiltValueField(wireName: 'ref_title_field3')
  String get refTitleField3;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(ProdRefereceRecordBuilder builder) => builder
    ..refReference = ''
    ..refDescription = ''
    ..refAbout = ''
    ..refImage = ''
    ..refTitleField1 = ''
    ..refTitleField2 = ''
    ..refTitleField3 = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prod_referece');

  static Stream<ProdRefereceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdRefereceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdRefereceRecord._();
  factory ProdRefereceRecord(
          [void Function(ProdRefereceRecordBuilder) updates]) =
      _$ProdRefereceRecord;

  static ProdRefereceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdRefereceRecordData({
  String refReference,
  String refDescription,
  String refAbout,
  String refImage,
  String refTitleField1,
  String refTitleField2,
  String refTitleField3,
}) =>
    serializers.toFirestore(
        ProdRefereceRecord.serializer,
        ProdRefereceRecord((p) => p
          ..refReference = refReference
          ..refDescription = refDescription
          ..refAbout = refAbout
          ..refImage = refImage
          ..refTitleField1 = refTitleField1
          ..refTitleField2 = refTitleField2
          ..refTitleField3 = refTitleField3));
