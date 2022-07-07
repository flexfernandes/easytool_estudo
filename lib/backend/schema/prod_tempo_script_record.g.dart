// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_tempo_script_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdTempoScriptRecord> _$prodTempoScriptRecordSerializer =
    new _$ProdTempoScriptRecordSerializer();

class _$ProdTempoScriptRecordSerializer
    implements StructuredSerializer<ProdTempoScriptRecord> {
  @override
  final Iterable<Type> types = const [
    ProdTempoScriptRecord,
    _$ProdTempoScriptRecord
  ];
  @override
  final String wireName = 'ProdTempoScriptRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProdTempoScriptRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.temID;
    if (value != null) {
      result
        ..add('temID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.proparID;
    if (value != null) {
      result
        ..add('proparID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.refID;
    if (value != null) {
      result
        ..add('refID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.scrID;
    if (value != null) {
      result
        ..add('scrID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.scrrefID;
    if (value != null) {
      result
        ..add('scrrefID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.claID;
    if (value != null) {
      result
        ..add('claID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.order;
    if (value != null) {
      result
        ..add('order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.orderscript;
    if (value != null) {
      result
        ..add('orderscript')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.claDescription;
    if (value != null) {
      result
        ..add('cla_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.datecreator;
    if (value != null) {
      result
        ..add('datecreator')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  ProdTempoScriptRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdTempoScriptRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'temID':
          result.temID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'proparID':
          result.proparID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'refID':
          result.refID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'scrID':
          result.scrID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'scrrefID':
          result.scrrefID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'claID':
          result.claID = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'orderscript':
          result.orderscript = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cla_description':
          result.claDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'datecreator':
          result.datecreator = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$ProdTempoScriptRecord extends ProdTempoScriptRecord {
  @override
  final DocumentReference<Object> temID;
  @override
  final DocumentReference<Object> proparID;
  @override
  final DocumentReference<Object> refID;
  @override
  final DocumentReference<Object> scrID;
  @override
  final DocumentReference<Object> scrrefID;
  @override
  final DocumentReference<Object> claID;
  @override
  final int order;
  @override
  final int orderscript;
  @override
  final String claDescription;
  @override
  final DateTime datecreator;
  @override
  final int controler;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdTempoScriptRecord(
          [void Function(ProdTempoScriptRecordBuilder) updates]) =>
      (new ProdTempoScriptRecordBuilder()..update(updates)).build();

  _$ProdTempoScriptRecord._(
      {this.temID,
      this.proparID,
      this.refID,
      this.scrID,
      this.scrrefID,
      this.claID,
      this.order,
      this.orderscript,
      this.claDescription,
      this.datecreator,
      this.controler,
      this.reference})
      : super._();

  @override
  ProdTempoScriptRecord rebuild(
          void Function(ProdTempoScriptRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdTempoScriptRecordBuilder toBuilder() =>
      new ProdTempoScriptRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdTempoScriptRecord &&
        temID == other.temID &&
        proparID == other.proparID &&
        refID == other.refID &&
        scrID == other.scrID &&
        scrrefID == other.scrrefID &&
        claID == other.claID &&
        order == other.order &&
        orderscript == other.orderscript &&
        claDescription == other.claDescription &&
        datecreator == other.datecreator &&
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
                                            $jc($jc(0, temID.hashCode),
                                                proparID.hashCode),
                                            refID.hashCode),
                                        scrID.hashCode),
                                    scrrefID.hashCode),
                                claID.hashCode),
                            order.hashCode),
                        orderscript.hashCode),
                    claDescription.hashCode),
                datecreator.hashCode),
            controler.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdTempoScriptRecord')
          ..add('temID', temID)
          ..add('proparID', proparID)
          ..add('refID', refID)
          ..add('scrID', scrID)
          ..add('scrrefID', scrrefID)
          ..add('claID', claID)
          ..add('order', order)
          ..add('orderscript', orderscript)
          ..add('claDescription', claDescription)
          ..add('datecreator', datecreator)
          ..add('controler', controler)
          ..add('reference', reference))
        .toString();
  }
}

class ProdTempoScriptRecordBuilder
    implements Builder<ProdTempoScriptRecord, ProdTempoScriptRecordBuilder> {
  _$ProdTempoScriptRecord _$v;

  DocumentReference<Object> _temID;
  DocumentReference<Object> get temID => _$this._temID;
  set temID(DocumentReference<Object> temID) => _$this._temID = temID;

  DocumentReference<Object> _proparID;
  DocumentReference<Object> get proparID => _$this._proparID;
  set proparID(DocumentReference<Object> proparID) =>
      _$this._proparID = proparID;

  DocumentReference<Object> _refID;
  DocumentReference<Object> get refID => _$this._refID;
  set refID(DocumentReference<Object> refID) => _$this._refID = refID;

  DocumentReference<Object> _scrID;
  DocumentReference<Object> get scrID => _$this._scrID;
  set scrID(DocumentReference<Object> scrID) => _$this._scrID = scrID;

  DocumentReference<Object> _scrrefID;
  DocumentReference<Object> get scrrefID => _$this._scrrefID;
  set scrrefID(DocumentReference<Object> scrrefID) =>
      _$this._scrrefID = scrrefID;

  DocumentReference<Object> _claID;
  DocumentReference<Object> get claID => _$this._claID;
  set claID(DocumentReference<Object> claID) => _$this._claID = claID;

  int _order;
  int get order => _$this._order;
  set order(int order) => _$this._order = order;

  int _orderscript;
  int get orderscript => _$this._orderscript;
  set orderscript(int orderscript) => _$this._orderscript = orderscript;

  String _claDescription;
  String get claDescription => _$this._claDescription;
  set claDescription(String claDescription) =>
      _$this._claDescription = claDescription;

  DateTime _datecreator;
  DateTime get datecreator => _$this._datecreator;
  set datecreator(DateTime datecreator) => _$this._datecreator = datecreator;

  int _controler;
  int get controler => _$this._controler;
  set controler(int controler) => _$this._controler = controler;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdTempoScriptRecordBuilder() {
    ProdTempoScriptRecord._initializeBuilder(this);
  }

  ProdTempoScriptRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temID = $v.temID;
      _proparID = $v.proparID;
      _refID = $v.refID;
      _scrID = $v.scrID;
      _scrrefID = $v.scrrefID;
      _claID = $v.claID;
      _order = $v.order;
      _orderscript = $v.orderscript;
      _claDescription = $v.claDescription;
      _datecreator = $v.datecreator;
      _controler = $v.controler;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdTempoScriptRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdTempoScriptRecord;
  }

  @override
  void update(void Function(ProdTempoScriptRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdTempoScriptRecord build() {
    final _$result = _$v ??
        new _$ProdTempoScriptRecord._(
            temID: temID,
            proparID: proparID,
            refID: refID,
            scrID: scrID,
            scrrefID: scrrefID,
            claID: claID,
            order: order,
            orderscript: orderscript,
            claDescription: claDescription,
            datecreator: datecreator,
            controler: controler,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
