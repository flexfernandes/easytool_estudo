// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_script_reference_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdScriptReferenceRecord> _$prodScriptReferenceRecordSerializer =
    new _$ProdScriptReferenceRecordSerializer();

class _$ProdScriptReferenceRecordSerializer
    implements StructuredSerializer<ProdScriptReferenceRecord> {
  @override
  final Iterable<Type> types = const [
    ProdScriptReferenceRecord,
    _$ProdScriptReferenceRecord
  ];
  @override
  final String wireName = 'ProdScriptReferenceRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProdScriptReferenceRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.scrRefDescription;
    if (value != null) {
      result
        ..add('scr_ref_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrRefClassification;
    if (value != null) {
      result
        ..add('scr_ref_classification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrId;
    if (value != null) {
      result
        ..add('scr_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.refId;
    if (value != null) {
      result
        ..add('ref_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  ProdScriptReferenceRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdScriptReferenceRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'scr_ref_description':
          result.scrRefDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_ref_classification':
          result.scrRefClassification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_id':
          result.scrId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'ref_id':
          result.refId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$ProdScriptReferenceRecord extends ProdScriptReferenceRecord {
  @override
  final String scrRefDescription;
  @override
  final String scrRefClassification;
  @override
  final DocumentReference<Object> scrId;
  @override
  final DocumentReference<Object> refId;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdScriptReferenceRecord(
          [void Function(ProdScriptReferenceRecordBuilder) updates]) =>
      (new ProdScriptReferenceRecordBuilder()..update(updates)).build();

  _$ProdScriptReferenceRecord._(
      {this.scrRefDescription,
      this.scrRefClassification,
      this.scrId,
      this.refId,
      this.reference})
      : super._();

  @override
  ProdScriptReferenceRecord rebuild(
          void Function(ProdScriptReferenceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdScriptReferenceRecordBuilder toBuilder() =>
      new ProdScriptReferenceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdScriptReferenceRecord &&
        scrRefDescription == other.scrRefDescription &&
        scrRefClassification == other.scrRefClassification &&
        scrId == other.scrId &&
        refId == other.refId &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc(0, scrRefDescription.hashCode),
                    scrRefClassification.hashCode),
                scrId.hashCode),
            refId.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdScriptReferenceRecord')
          ..add('scrRefDescription', scrRefDescription)
          ..add('scrRefClassification', scrRefClassification)
          ..add('scrId', scrId)
          ..add('refId', refId)
          ..add('reference', reference))
        .toString();
  }
}

class ProdScriptReferenceRecordBuilder
    implements
        Builder<ProdScriptReferenceRecord, ProdScriptReferenceRecordBuilder> {
  _$ProdScriptReferenceRecord _$v;

  String _scrRefDescription;
  String get scrRefDescription => _$this._scrRefDescription;
  set scrRefDescription(String scrRefDescription) =>
      _$this._scrRefDescription = scrRefDescription;

  String _scrRefClassification;
  String get scrRefClassification => _$this._scrRefClassification;
  set scrRefClassification(String scrRefClassification) =>
      _$this._scrRefClassification = scrRefClassification;

  DocumentReference<Object> _scrId;
  DocumentReference<Object> get scrId => _$this._scrId;
  set scrId(DocumentReference<Object> scrId) => _$this._scrId = scrId;

  DocumentReference<Object> _refId;
  DocumentReference<Object> get refId => _$this._refId;
  set refId(DocumentReference<Object> refId) => _$this._refId = refId;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdScriptReferenceRecordBuilder() {
    ProdScriptReferenceRecord._initializeBuilder(this);
  }

  ProdScriptReferenceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scrRefDescription = $v.scrRefDescription;
      _scrRefClassification = $v.scrRefClassification;
      _scrId = $v.scrId;
      _refId = $v.refId;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdScriptReferenceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdScriptReferenceRecord;
  }

  @override
  void update(void Function(ProdScriptReferenceRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdScriptReferenceRecord build() {
    final _$result = _$v ??
        new _$ProdScriptReferenceRecord._(
            scrRefDescription: scrRefDescription,
            scrRefClassification: scrRefClassification,
            scrId: scrId,
            refId: refId,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
