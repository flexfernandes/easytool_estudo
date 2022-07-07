// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_classification_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdClassificationRecord> _$prodClassificationRecordSerializer =
    new _$ProdClassificationRecordSerializer();

class _$ProdClassificationRecordSerializer
    implements StructuredSerializer<ProdClassificationRecord> {
  @override
  final Iterable<Type> types = const [
    ProdClassificationRecord,
    _$ProdClassificationRecord
  ];
  @override
  final String wireName = 'ProdClassificationRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProdClassificationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.claClassification;
    if (value != null) {
      result
        ..add('cla_classification')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.claDescription;
    if (value != null) {
      result
        ..add('cla_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.claAbout1;
    if (value != null) {
      result
        ..add('cla_about1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.claAbout2;
    if (value != null) {
      result
        ..add('cla_about2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.claImage;
    if (value != null) {
      result
        ..add('cla_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.refId;
    if (value != null) {
      result
        ..add('ref_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.claDescriptionStart;
    if (value != null) {
      result
        ..add('cla_description_start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.claDescriptionTheEnd;
    if (value != null) {
      result
        ..add('cla_description_the_end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.claKeyword;
    if (value != null) {
      result
        ..add('cla_keyword')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.claIspartname;
    if (value != null) {
      result
        ..add('cla_ispartname')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.claCategoria;
    if (value != null) {
      result
        ..add('cla_categoria')
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
  ProdClassificationRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdClassificationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'cla_classification':
          result.claClassification = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cla_description':
          result.claDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cla_about1':
          result.claAbout1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cla_about2':
          result.claAbout2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cla_image':
          result.claImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref_id':
          result.refId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'cla_description_start':
          result.claDescriptionStart = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cla_description_the_end':
          result.claDescriptionTheEnd = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cla_keyword':
          result.claKeyword = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cla_ispartname':
          result.claIspartname = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'cla_categoria':
          result.claCategoria = serializers.deserialize(value,
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

class _$ProdClassificationRecord extends ProdClassificationRecord {
  @override
  final String claClassification;
  @override
  final String claDescription;
  @override
  final String claAbout1;
  @override
  final String claAbout2;
  @override
  final String claImage;
  @override
  final DocumentReference<Object> refId;
  @override
  final String claDescriptionStart;
  @override
  final String claDescriptionTheEnd;
  @override
  final bool claKeyword;
  @override
  final bool claIspartname;
  @override
  final String claCategoria;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdClassificationRecord(
          [void Function(ProdClassificationRecordBuilder) updates]) =>
      (new ProdClassificationRecordBuilder()..update(updates)).build();

  _$ProdClassificationRecord._(
      {this.claClassification,
      this.claDescription,
      this.claAbout1,
      this.claAbout2,
      this.claImage,
      this.refId,
      this.claDescriptionStart,
      this.claDescriptionTheEnd,
      this.claKeyword,
      this.claIspartname,
      this.claCategoria,
      this.reference})
      : super._();

  @override
  ProdClassificationRecord rebuild(
          void Function(ProdClassificationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdClassificationRecordBuilder toBuilder() =>
      new ProdClassificationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdClassificationRecord &&
        claClassification == other.claClassification &&
        claDescription == other.claDescription &&
        claAbout1 == other.claAbout1 &&
        claAbout2 == other.claAbout2 &&
        claImage == other.claImage &&
        refId == other.refId &&
        claDescriptionStart == other.claDescriptionStart &&
        claDescriptionTheEnd == other.claDescriptionTheEnd &&
        claKeyword == other.claKeyword &&
        claIspartname == other.claIspartname &&
        claCategoria == other.claCategoria &&
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
                                                $jc(0,
                                                    claClassification.hashCode),
                                                claDescription.hashCode),
                                            claAbout1.hashCode),
                                        claAbout2.hashCode),
                                    claImage.hashCode),
                                refId.hashCode),
                            claDescriptionStart.hashCode),
                        claDescriptionTheEnd.hashCode),
                    claKeyword.hashCode),
                claIspartname.hashCode),
            claCategoria.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdClassificationRecord')
          ..add('claClassification', claClassification)
          ..add('claDescription', claDescription)
          ..add('claAbout1', claAbout1)
          ..add('claAbout2', claAbout2)
          ..add('claImage', claImage)
          ..add('refId', refId)
          ..add('claDescriptionStart', claDescriptionStart)
          ..add('claDescriptionTheEnd', claDescriptionTheEnd)
          ..add('claKeyword', claKeyword)
          ..add('claIspartname', claIspartname)
          ..add('claCategoria', claCategoria)
          ..add('reference', reference))
        .toString();
  }
}

class ProdClassificationRecordBuilder
    implements
        Builder<ProdClassificationRecord, ProdClassificationRecordBuilder> {
  _$ProdClassificationRecord _$v;

  String _claClassification;
  String get claClassification => _$this._claClassification;
  set claClassification(String claClassification) =>
      _$this._claClassification = claClassification;

  String _claDescription;
  String get claDescription => _$this._claDescription;
  set claDescription(String claDescription) =>
      _$this._claDescription = claDescription;

  String _claAbout1;
  String get claAbout1 => _$this._claAbout1;
  set claAbout1(String claAbout1) => _$this._claAbout1 = claAbout1;

  String _claAbout2;
  String get claAbout2 => _$this._claAbout2;
  set claAbout2(String claAbout2) => _$this._claAbout2 = claAbout2;

  String _claImage;
  String get claImage => _$this._claImage;
  set claImage(String claImage) => _$this._claImage = claImage;

  DocumentReference<Object> _refId;
  DocumentReference<Object> get refId => _$this._refId;
  set refId(DocumentReference<Object> refId) => _$this._refId = refId;

  String _claDescriptionStart;
  String get claDescriptionStart => _$this._claDescriptionStart;
  set claDescriptionStart(String claDescriptionStart) =>
      _$this._claDescriptionStart = claDescriptionStart;

  String _claDescriptionTheEnd;
  String get claDescriptionTheEnd => _$this._claDescriptionTheEnd;
  set claDescriptionTheEnd(String claDescriptionTheEnd) =>
      _$this._claDescriptionTheEnd = claDescriptionTheEnd;

  bool _claKeyword;
  bool get claKeyword => _$this._claKeyword;
  set claKeyword(bool claKeyword) => _$this._claKeyword = claKeyword;

  bool _claIspartname;
  bool get claIspartname => _$this._claIspartname;
  set claIspartname(bool claIspartname) =>
      _$this._claIspartname = claIspartname;

  String _claCategoria;
  String get claCategoria => _$this._claCategoria;
  set claCategoria(String claCategoria) => _$this._claCategoria = claCategoria;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdClassificationRecordBuilder() {
    ProdClassificationRecord._initializeBuilder(this);
  }

  ProdClassificationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _claClassification = $v.claClassification;
      _claDescription = $v.claDescription;
      _claAbout1 = $v.claAbout1;
      _claAbout2 = $v.claAbout2;
      _claImage = $v.claImage;
      _refId = $v.refId;
      _claDescriptionStart = $v.claDescriptionStart;
      _claDescriptionTheEnd = $v.claDescriptionTheEnd;
      _claKeyword = $v.claKeyword;
      _claIspartname = $v.claIspartname;
      _claCategoria = $v.claCategoria;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdClassificationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdClassificationRecord;
  }

  @override
  void update(void Function(ProdClassificationRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdClassificationRecord build() {
    final _$result = _$v ??
        new _$ProdClassificationRecord._(
            claClassification: claClassification,
            claDescription: claDescription,
            claAbout1: claAbout1,
            claAbout2: claAbout2,
            claImage: claImage,
            refId: refId,
            claDescriptionStart: claDescriptionStart,
            claDescriptionTheEnd: claDescriptionTheEnd,
            claKeyword: claKeyword,
            claIspartname: claIspartname,
            claCategoria: claCategoria,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
