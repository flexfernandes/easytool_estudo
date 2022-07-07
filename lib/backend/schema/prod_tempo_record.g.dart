// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_tempo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdTempoRecord> _$prodTempoRecordSerializer =
    new _$ProdTempoRecordSerializer();

class _$ProdTempoRecordSerializer
    implements StructuredSerializer<ProdTempoRecord> {
  @override
  final Iterable<Type> types = const [ProdTempoRecord, _$ProdTempoRecord];
  @override
  final String wireName = 'ProdTempoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProdTempoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.proparID;
    if (value != null) {
      result
        ..add('proparID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.datecreator;
    if (value != null) {
      result
        ..add('datecreator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.field0101;
    if (value != null) {
      result
        ..add('field_01_01')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.field0102;
    if (value != null) {
      result
        ..add('field_01_02')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.field0201;
    if (value != null) {
      result
        ..add('field_02_01')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.field0202;
    if (value != null) {
      result
        ..add('field_02_02')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.field0301;
    if (value != null) {
      result
        ..add('field_03_01')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.field0302;
    if (value != null) {
      result
        ..add('field_03_02')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title01;
    if (value != null) {
      result
        ..add('title_01')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title02;
    if (value != null) {
      result
        ..add('title_02')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title03;
    if (value != null) {
      result
        ..add('title_03')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.controler;
    if (value != null) {
      result
        ..add('controler')
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
  ProdTempoRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdTempoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'proparID':
          result.proparID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'datecreator':
          result.datecreator = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'field_01_01':
          result.field0101 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'field_01_02':
          result.field0102 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'field_02_01':
          result.field0201 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'field_02_02':
          result.field0202 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'field_03_01':
          result.field0301 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'field_03_02':
          result.field0302 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_01':
          result.title01 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_02':
          result.title02 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title_03':
          result.title03 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'controler':
          result.controler = serializers.deserialize(value,
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

class _$ProdTempoRecord extends ProdTempoRecord {
  @override
  final DocumentReference<Object> proparID;
  @override
  final DateTime datecreator;
  @override
  final String field0101;
  @override
  final String field0102;
  @override
  final String field0201;
  @override
  final String field0202;
  @override
  final String field0301;
  @override
  final String field0302;
  @override
  final String title01;
  @override
  final String title02;
  @override
  final String title03;
  @override
  final int controler;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdTempoRecord([void Function(ProdTempoRecordBuilder) updates]) =>
      (new ProdTempoRecordBuilder()..update(updates)).build();

  _$ProdTempoRecord._(
      {this.proparID,
      this.datecreator,
      this.field0101,
      this.field0102,
      this.field0201,
      this.field0202,
      this.field0301,
      this.field0302,
      this.title01,
      this.title02,
      this.title03,
      this.controler,
      this.reference})
      : super._();

  @override
  ProdTempoRecord rebuild(void Function(ProdTempoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdTempoRecordBuilder toBuilder() =>
      new ProdTempoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdTempoRecord &&
        proparID == other.proparID &&
        datecreator == other.datecreator &&
        field0101 == other.field0101 &&
        field0102 == other.field0102 &&
        field0201 == other.field0201 &&
        field0202 == other.field0202 &&
        field0301 == other.field0301 &&
        field0302 == other.field0302 &&
        title01 == other.title01 &&
        title02 == other.title02 &&
        title03 == other.title03 &&
        controler == other.controler &&
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
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, proparID.hashCode),
                                                    datecreator.hashCode),
                                                field0101.hashCode),
                                            field0102.hashCode),
                                        field0201.hashCode),
                                    field0202.hashCode),
                                field0301.hashCode),
                            field0302.hashCode),
                        title01.hashCode),
                    title02.hashCode),
                title03.hashCode),
            controler.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdTempoRecord')
          ..add('proparID', proparID)
          ..add('datecreator', datecreator)
          ..add('field0101', field0101)
          ..add('field0102', field0102)
          ..add('field0201', field0201)
          ..add('field0202', field0202)
          ..add('field0301', field0301)
          ..add('field0302', field0302)
          ..add('title01', title01)
          ..add('title02', title02)
          ..add('title03', title03)
          ..add('controler', controler)
          ..add('reference', reference))
        .toString();
  }
}

class ProdTempoRecordBuilder
    implements Builder<ProdTempoRecord, ProdTempoRecordBuilder> {
  _$ProdTempoRecord _$v;

  DocumentReference<Object> _proparID;
  DocumentReference<Object> get proparID => _$this._proparID;
  set proparID(DocumentReference<Object> proparID) =>
      _$this._proparID = proparID;

  DateTime _datecreator;
  DateTime get datecreator => _$this._datecreator;
  set datecreator(DateTime datecreator) => _$this._datecreator = datecreator;

  String _field0101;
  String get field0101 => _$this._field0101;
  set field0101(String field0101) => _$this._field0101 = field0101;

  String _field0102;
  String get field0102 => _$this._field0102;
  set field0102(String field0102) => _$this._field0102 = field0102;

  String _field0201;
  String get field0201 => _$this._field0201;
  set field0201(String field0201) => _$this._field0201 = field0201;

  String _field0202;
  String get field0202 => _$this._field0202;
  set field0202(String field0202) => _$this._field0202 = field0202;

  String _field0301;
  String get field0301 => _$this._field0301;
  set field0301(String field0301) => _$this._field0301 = field0301;

  String _field0302;
  String get field0302 => _$this._field0302;
  set field0302(String field0302) => _$this._field0302 = field0302;

  String _title01;
  String get title01 => _$this._title01;
  set title01(String title01) => _$this._title01 = title01;

  String _title02;
  String get title02 => _$this._title02;
  set title02(String title02) => _$this._title02 = title02;

  String _title03;
  String get title03 => _$this._title03;
  set title03(String title03) => _$this._title03 = title03;

  int _controler;
  int get controler => _$this._controler;
  set controler(int controler) => _$this._controler = controler;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdTempoRecordBuilder() {
    ProdTempoRecord._initializeBuilder(this);
  }

  ProdTempoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _proparID = $v.proparID;
      _datecreator = $v.datecreator;
      _field0101 = $v.field0101;
      _field0102 = $v.field0102;
      _field0201 = $v.field0201;
      _field0202 = $v.field0202;
      _field0301 = $v.field0301;
      _field0302 = $v.field0302;
      _title01 = $v.title01;
      _title02 = $v.title02;
      _title03 = $v.title03;
      _controler = $v.controler;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdTempoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdTempoRecord;
  }

  @override
  void update(void Function(ProdTempoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdTempoRecord build() {
    final _$result = _$v ??
        new _$ProdTempoRecord._(
            proparID: proparID,
            datecreator: datecreator,
            field0101: field0101,
            field0102: field0102,
            field0201: field0201,
            field0202: field0202,
            field0301: field0301,
            field0302: field0302,
            title01: title01,
            title02: title02,
            title03: title03,
            controler: controler,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
