// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_referece_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdRefereceRecord> _$prodRefereceRecordSerializer =
    new _$ProdRefereceRecordSerializer();

class _$ProdRefereceRecordSerializer
    implements StructuredSerializer<ProdRefereceRecord> {
  @override
  final Iterable<Type> types = const [ProdRefereceRecord, _$ProdRefereceRecord];
  @override
  final String wireName = 'ProdRefereceRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProdRefereceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.refReference;
    if (value != null) {
      result
        ..add('ref_reference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refDescription;
    if (value != null) {
      result
        ..add('ref_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refAbout;
    if (value != null) {
      result
        ..add('ref_about')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refImage;
    if (value != null) {
      result
        ..add('ref_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refTitleField1;
    if (value != null) {
      result
        ..add('ref_title_field1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refTitleField2;
    if (value != null) {
      result
        ..add('ref_title_field2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refTitleField3;
    if (value != null) {
      result
        ..add('ref_title_field3')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  ProdRefereceRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdRefereceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'ref_reference':
          result.refReference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref_description':
          result.refDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref_about':
          result.refAbout = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref_image':
          result.refImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref_title_field1':
          result.refTitleField1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref_title_field2':
          result.refTitleField2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref_title_field3':
          result.refTitleField3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ProdRefereceRecord extends ProdRefereceRecord {
  @override
  final String refReference;
  @override
  final String refDescription;
  @override
  final String refAbout;
  @override
  final String refImage;
  @override
  final String refTitleField1;
  @override
  final String refTitleField2;
  @override
  final String refTitleField3;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdRefereceRecord(
          [void Function(ProdRefereceRecordBuilder) updates]) =>
      (new ProdRefereceRecordBuilder()..update(updates)).build();

  _$ProdRefereceRecord._(
      {this.refReference,
      this.refDescription,
      this.refAbout,
      this.refImage,
      this.refTitleField1,
      this.refTitleField2,
      this.refTitleField3,
      this.reference})
      : super._();

  @override
  ProdRefereceRecord rebuild(
          void Function(ProdRefereceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdRefereceRecordBuilder toBuilder() =>
      new ProdRefereceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdRefereceRecord &&
        refReference == other.refReference &&
        refDescription == other.refDescription &&
        refAbout == other.refAbout &&
        refImage == other.refImage &&
        refTitleField1 == other.refTitleField1 &&
        refTitleField2 == other.refTitleField2 &&
        refTitleField3 == other.refTitleField3 &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, refReference.hashCode),
                                refDescription.hashCode),
                            refAbout.hashCode),
                        refImage.hashCode),
                    refTitleField1.hashCode),
                refTitleField2.hashCode),
            refTitleField3.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdRefereceRecord')
          ..add('refReference', refReference)
          ..add('refDescription', refDescription)
          ..add('refAbout', refAbout)
          ..add('refImage', refImage)
          ..add('refTitleField1', refTitleField1)
          ..add('refTitleField2', refTitleField2)
          ..add('refTitleField3', refTitleField3)
          ..add('reference', reference))
        .toString();
  }
}

class ProdRefereceRecordBuilder
    implements Builder<ProdRefereceRecord, ProdRefereceRecordBuilder> {
  _$ProdRefereceRecord _$v;

  String _refReference;
  String get refReference => _$this._refReference;
  set refReference(String refReference) => _$this._refReference = refReference;

  String _refDescription;
  String get refDescription => _$this._refDescription;
  set refDescription(String refDescription) =>
      _$this._refDescription = refDescription;

  String _refAbout;
  String get refAbout => _$this._refAbout;
  set refAbout(String refAbout) => _$this._refAbout = refAbout;

  String _refImage;
  String get refImage => _$this._refImage;
  set refImage(String refImage) => _$this._refImage = refImage;

  String _refTitleField1;
  String get refTitleField1 => _$this._refTitleField1;
  set refTitleField1(String refTitleField1) =>
      _$this._refTitleField1 = refTitleField1;

  String _refTitleField2;
  String get refTitleField2 => _$this._refTitleField2;
  set refTitleField2(String refTitleField2) =>
      _$this._refTitleField2 = refTitleField2;

  String _refTitleField3;
  String get refTitleField3 => _$this._refTitleField3;
  set refTitleField3(String refTitleField3) =>
      _$this._refTitleField3 = refTitleField3;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdRefereceRecordBuilder() {
    ProdRefereceRecord._initializeBuilder(this);
  }

  ProdRefereceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refReference = $v.refReference;
      _refDescription = $v.refDescription;
      _refAbout = $v.refAbout;
      _refImage = $v.refImage;
      _refTitleField1 = $v.refTitleField1;
      _refTitleField2 = $v.refTitleField2;
      _refTitleField3 = $v.refTitleField3;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdRefereceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdRefereceRecord;
  }

  @override
  void update(void Function(ProdRefereceRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdRefereceRecord build() {
    final _$result = _$v ??
        new _$ProdRefereceRecord._(
            refReference: refReference,
            refDescription: refDescription,
            refAbout: refAbout,
            refImage: refImage,
            refTitleField1: refTitleField1,
            refTitleField2: refTitleField2,
            refTitleField3: refTitleField3,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
