import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prod_product_image_record.g.dart';

abstract class ProdProductImageRecord
    implements Built<ProdProductImageRecord, ProdProductImageRecordBuilder> {
  static Serializer<ProdProductImageRecord> get serializer =>
      _$prodProductImageRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'img_frontcover')
  bool get imgFrontcover;

  @nullable
  @BuiltValueField(wireName: 'img_active')
  bool get imgActive;

  @nullable
  DocumentReference get prodID;

  @nullable
  @BuiltValueField(wireName: 'img_image')
  String get imgImage;

  @nullable
  @BuiltValueField(wireName: 'img_create')
  DateTime get imgCreate;

  @nullable
  @BuiltValueField(wireName: 'img_order')
  int get imgOrder;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  DocumentReference get parentReference => reference.parent.parent;

  static void _initializeBuilder(ProdProductImageRecordBuilder builder) =>
      builder
        ..imgFrontcover = false
        ..imgActive = false
        ..imgImage = ''
        ..imgOrder = 0;

  static Query<Map<String, dynamic>> collection([DocumentReference parent]) =>
      parent != null
          ? parent.collection('prod_product_image')
          : FirebaseFirestore.instance.collectionGroup('prod_product_image');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('prod_product_image').doc();

  static Stream<ProdProductImageRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<ProdProductImageRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  ProdProductImageRecord._();
  factory ProdProductImageRecord(
          [void Function(ProdProductImageRecordBuilder) updates]) =
      _$ProdProductImageRecord;

  static ProdProductImageRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createProdProductImageRecordData({
  bool imgFrontcover,
  bool imgActive,
  DocumentReference prodID,
  String imgImage,
  DateTime imgCreate,
  int imgOrder,
}) =>
    serializers.toFirestore(
        ProdProductImageRecord.serializer,
        ProdProductImageRecord((p) => p
          ..imgFrontcover = imgFrontcover
          ..imgActive = imgActive
          ..prodID = prodID
          ..imgImage = imgImage
          ..imgCreate = imgCreate
          ..imgOrder = imgOrder));
