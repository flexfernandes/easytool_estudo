// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_product_image_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdProductImageRecord> _$prodProductImageRecordSerializer =
    new _$ProdProductImageRecordSerializer();

class _$ProdProductImageRecordSerializer
    implements StructuredSerializer<ProdProductImageRecord> {
  @override
  final Iterable<Type> types = const [
    ProdProductImageRecord,
    _$ProdProductImageRecord
  ];
  @override
  final String wireName = 'ProdProductImageRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProdProductImageRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.imgFrontcover;
    if (value != null) {
      result
        ..add('img_frontcover')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.imgActive;
    if (value != null) {
      result
        ..add('img_active')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.prodID;
    if (value != null) {
      result
        ..add('prodID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.imgImage;
    if (value != null) {
      result
        ..add('img_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imgCreate;
    if (value != null) {
      result
        ..add('img_create')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.imgOrder;
    if (value != null) {
      result
        ..add('img_order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  ProdProductImageRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdProductImageRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'img_frontcover':
          result.imgFrontcover = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'img_active':
          result.imgActive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'prodID':
          result.prodID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'img_image':
          result.imgImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'img_create':
          result.imgCreate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'img_order':
          result.imgOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$ProdProductImageRecord extends ProdProductImageRecord {
  @override
  final bool imgFrontcover;
  @override
  final bool imgActive;
  @override
  final DocumentReference<Object> prodID;
  @override
  final String imgImage;
  @override
  final DateTime imgCreate;
  @override
  final int imgOrder;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdProductImageRecord(
          [void Function(ProdProductImageRecordBuilder) updates]) =>
      (new ProdProductImageRecordBuilder()..update(updates)).build();

  _$ProdProductImageRecord._(
      {this.imgFrontcover,
      this.imgActive,
      this.prodID,
      this.imgImage,
      this.imgCreate,
      this.imgOrder,
      this.reference})
      : super._();

  @override
  ProdProductImageRecord rebuild(
          void Function(ProdProductImageRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdProductImageRecordBuilder toBuilder() =>
      new ProdProductImageRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdProductImageRecord &&
        imgFrontcover == other.imgFrontcover &&
        imgActive == other.imgActive &&
        prodID == other.prodID &&
        imgImage == other.imgImage &&
        imgCreate == other.imgCreate &&
        imgOrder == other.imgOrder &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, imgFrontcover.hashCode), imgActive.hashCode),
                        prodID.hashCode),
                    imgImage.hashCode),
                imgCreate.hashCode),
            imgOrder.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdProductImageRecord')
          ..add('imgFrontcover', imgFrontcover)
          ..add('imgActive', imgActive)
          ..add('prodID', prodID)
          ..add('imgImage', imgImage)
          ..add('imgCreate', imgCreate)
          ..add('imgOrder', imgOrder)
          ..add('reference', reference))
        .toString();
  }
}

class ProdProductImageRecordBuilder
    implements Builder<ProdProductImageRecord, ProdProductImageRecordBuilder> {
  _$ProdProductImageRecord _$v;

  bool _imgFrontcover;
  bool get imgFrontcover => _$this._imgFrontcover;
  set imgFrontcover(bool imgFrontcover) =>
      _$this._imgFrontcover = imgFrontcover;

  bool _imgActive;
  bool get imgActive => _$this._imgActive;
  set imgActive(bool imgActive) => _$this._imgActive = imgActive;

  DocumentReference<Object> _prodID;
  DocumentReference<Object> get prodID => _$this._prodID;
  set prodID(DocumentReference<Object> prodID) => _$this._prodID = prodID;

  String _imgImage;
  String get imgImage => _$this._imgImage;
  set imgImage(String imgImage) => _$this._imgImage = imgImage;

  DateTime _imgCreate;
  DateTime get imgCreate => _$this._imgCreate;
  set imgCreate(DateTime imgCreate) => _$this._imgCreate = imgCreate;

  int _imgOrder;
  int get imgOrder => _$this._imgOrder;
  set imgOrder(int imgOrder) => _$this._imgOrder = imgOrder;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdProductImageRecordBuilder() {
    ProdProductImageRecord._initializeBuilder(this);
  }

  ProdProductImageRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imgFrontcover = $v.imgFrontcover;
      _imgActive = $v.imgActive;
      _prodID = $v.prodID;
      _imgImage = $v.imgImage;
      _imgCreate = $v.imgCreate;
      _imgOrder = $v.imgOrder;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdProductImageRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdProductImageRecord;
  }

  @override
  void update(void Function(ProdProductImageRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdProductImageRecord build() {
    final _$result = _$v ??
        new _$ProdProductImageRecord._(
            imgFrontcover: imgFrontcover,
            imgActive: imgActive,
            prodID: prodID,
            imgImage: imgImage,
            imgCreate: imgCreate,
            imgOrder: imgOrder,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
