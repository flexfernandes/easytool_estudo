// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_error_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdErrorRecord> _$prodErrorRecordSerializer =
    new _$ProdErrorRecordSerializer();

class _$ProdErrorRecordSerializer
    implements StructuredSerializer<ProdErrorRecord> {
  @override
  final Iterable<Type> types = const [ProdErrorRecord, _$ProdErrorRecord];
  @override
  final String wireName = 'ProdErrorRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProdErrorRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ProdErrorRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdErrorRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$ProdErrorRecord extends ProdErrorRecord {
  @override
  final String error;
  @override
  final DateTime date;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdErrorRecord([void Function(ProdErrorRecordBuilder) updates]) =>
      (new ProdErrorRecordBuilder()..update(updates)).build();

  _$ProdErrorRecord._({this.error, this.date, this.reference}) : super._();

  @override
  ProdErrorRecord rebuild(void Function(ProdErrorRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdErrorRecordBuilder toBuilder() =>
      new ProdErrorRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdErrorRecord &&
        error == other.error &&
        date == other.date &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, error.hashCode), date.hashCode), reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdErrorRecord')
          ..add('error', error)
          ..add('date', date)
          ..add('reference', reference))
        .toString();
  }
}

class ProdErrorRecordBuilder
    implements Builder<ProdErrorRecord, ProdErrorRecordBuilder> {
  _$ProdErrorRecord _$v;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  DateTime _date;
  DateTime get date => _$this._date;
  set date(DateTime date) => _$this._date = date;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdErrorRecordBuilder() {
    ProdErrorRecord._initializeBuilder(this);
  }

  ProdErrorRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _date = $v.date;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdErrorRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdErrorRecord;
  }

  @override
  void update(void Function(ProdErrorRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdErrorRecord build() {
    final _$result = _$v ??
        new _$ProdErrorRecord._(error: error, date: date, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
