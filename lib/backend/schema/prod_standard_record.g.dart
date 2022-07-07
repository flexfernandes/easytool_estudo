// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_standard_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdStandardRecord> _$prodStandardRecordSerializer =
    new _$ProdStandardRecordSerializer();

class _$ProdStandardRecordSerializer
    implements StructuredSerializer<ProdStandardRecord> {
  @override
  final Iterable<Type> types = const [ProdStandardRecord, _$ProdStandardRecord];
  @override
  final String wireName = 'ProdStandardRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProdStandardRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.staPage01;
    if (value != null) {
      result
        ..add('sta_page01')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.staPage0101;
    if (value != null) {
      result
        ..add('sta_page01_01')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.staPage0102;
    if (value != null) {
      result
        ..add('sta_page01_02')
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
  ProdStandardRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdStandardRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'sta_page01':
          result.staPage01 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sta_page01_01':
          result.staPage0101 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sta_page01_02':
          result.staPage0102 = serializers.deserialize(value,
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

class _$ProdStandardRecord extends ProdStandardRecord {
  @override
  final String staPage01;
  @override
  final String staPage0101;
  @override
  final String staPage0102;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdStandardRecord(
          [void Function(ProdStandardRecordBuilder) updates]) =>
      (new ProdStandardRecordBuilder()..update(updates)).build();

  _$ProdStandardRecord._(
      {this.staPage01, this.staPage0101, this.staPage0102, this.reference})
      : super._();

  @override
  ProdStandardRecord rebuild(
          void Function(ProdStandardRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdStandardRecordBuilder toBuilder() =>
      new ProdStandardRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdStandardRecord &&
        staPage01 == other.staPage01 &&
        staPage0101 == other.staPage0101 &&
        staPage0102 == other.staPage0102 &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, staPage01.hashCode), staPage0101.hashCode),
            staPage0102.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdStandardRecord')
          ..add('staPage01', staPage01)
          ..add('staPage0101', staPage0101)
          ..add('staPage0102', staPage0102)
          ..add('reference', reference))
        .toString();
  }
}

class ProdStandardRecordBuilder
    implements Builder<ProdStandardRecord, ProdStandardRecordBuilder> {
  _$ProdStandardRecord _$v;

  String _staPage01;
  String get staPage01 => _$this._staPage01;
  set staPage01(String staPage01) => _$this._staPage01 = staPage01;

  String _staPage0101;
  String get staPage0101 => _$this._staPage0101;
  set staPage0101(String staPage0101) => _$this._staPage0101 = staPage0101;

  String _staPage0102;
  String get staPage0102 => _$this._staPage0102;
  set staPage0102(String staPage0102) => _$this._staPage0102 = staPage0102;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdStandardRecordBuilder() {
    ProdStandardRecord._initializeBuilder(this);
  }

  ProdStandardRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staPage01 = $v.staPage01;
      _staPage0101 = $v.staPage0101;
      _staPage0102 = $v.staPage0102;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdStandardRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdStandardRecord;
  }

  @override
  void update(void Function(ProdStandardRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdStandardRecord build() {
    final _$result = _$v ??
        new _$ProdStandardRecord._(
            staPage01: staPage01,
            staPage0101: staPage0101,
            staPage0102: staPage0102,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
