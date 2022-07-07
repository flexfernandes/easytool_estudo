// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_script_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdScriptRecord> _$prodScriptRecordSerializer =
    new _$ProdScriptRecordSerializer();

class _$ProdScriptRecordSerializer
    implements StructuredSerializer<ProdScriptRecord> {
  @override
  final Iterable<Type> types = const [ProdScriptRecord, _$ProdScriptRecord];
  @override
  final String wireName = 'ProdScriptRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, ProdScriptRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.scrScript;
    if (value != null) {
      result
        ..add('scr_script')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrDescription;
    if (value != null) {
      result
        ..add('scr_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrDescriptionType;
    if (value != null) {
      result
        ..add('scr_description_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrSurnameType;
    if (value != null) {
      result
        ..add('scr_surname_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrAbout1;
    if (value != null) {
      result
        ..add('scr_about1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrImage;
    if (value != null) {
      result
        ..add('scr_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrIspartname;
    if (value != null) {
      result
        ..add('scr_ispartname')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.scrKeyword;
    if (value != null) {
      result
        ..add('scr_keyword')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.scrTratativa;
    if (value != null) {
      result
        ..add('scr_tratativa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scrCategoria;
    if (value != null) {
      result
        ..add('scr_categoria')
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
  ProdScriptRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdScriptRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'scr_script':
          result.scrScript = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_description':
          result.scrDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_description_type':
          result.scrDescriptionType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_surname_type':
          result.scrSurnameType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_about1':
          result.scrAbout1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_image':
          result.scrImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_ispartname':
          result.scrIspartname = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'scr_keyword':
          result.scrKeyword = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'scr_tratativa':
          result.scrTratativa = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scr_categoria':
          result.scrCategoria = serializers.deserialize(value,
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

class _$ProdScriptRecord extends ProdScriptRecord {
  @override
  final String scrScript;
  @override
  final String scrDescription;
  @override
  final String scrDescriptionType;
  @override
  final String scrSurnameType;
  @override
  final String scrAbout1;
  @override
  final String scrImage;
  @override
  final bool scrIspartname;
  @override
  final bool scrKeyword;
  @override
  final String scrTratativa;
  @override
  final String scrCategoria;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdScriptRecord(
          [void Function(ProdScriptRecordBuilder) updates]) =>
      (new ProdScriptRecordBuilder()..update(updates)).build();

  _$ProdScriptRecord._(
      {this.scrScript,
      this.scrDescription,
      this.scrDescriptionType,
      this.scrSurnameType,
      this.scrAbout1,
      this.scrImage,
      this.scrIspartname,
      this.scrKeyword,
      this.scrTratativa,
      this.scrCategoria,
      this.reference})
      : super._();

  @override
  ProdScriptRecord rebuild(void Function(ProdScriptRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdScriptRecordBuilder toBuilder() =>
      new ProdScriptRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdScriptRecord &&
        scrScript == other.scrScript &&
        scrDescription == other.scrDescription &&
        scrDescriptionType == other.scrDescriptionType &&
        scrSurnameType == other.scrSurnameType &&
        scrAbout1 == other.scrAbout1 &&
        scrImage == other.scrImage &&
        scrIspartname == other.scrIspartname &&
        scrKeyword == other.scrKeyword &&
        scrTratativa == other.scrTratativa &&
        scrCategoria == other.scrCategoria &&
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
                                        $jc($jc(0, scrScript.hashCode),
                                            scrDescription.hashCode),
                                        scrDescriptionType.hashCode),
                                    scrSurnameType.hashCode),
                                scrAbout1.hashCode),
                            scrImage.hashCode),
                        scrIspartname.hashCode),
                    scrKeyword.hashCode),
                scrTratativa.hashCode),
            scrCategoria.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdScriptRecord')
          ..add('scrScript', scrScript)
          ..add('scrDescription', scrDescription)
          ..add('scrDescriptionType', scrDescriptionType)
          ..add('scrSurnameType', scrSurnameType)
          ..add('scrAbout1', scrAbout1)
          ..add('scrImage', scrImage)
          ..add('scrIspartname', scrIspartname)
          ..add('scrKeyword', scrKeyword)
          ..add('scrTratativa', scrTratativa)
          ..add('scrCategoria', scrCategoria)
          ..add('reference', reference))
        .toString();
  }
}

class ProdScriptRecordBuilder
    implements Builder<ProdScriptRecord, ProdScriptRecordBuilder> {
  _$ProdScriptRecord _$v;

  String _scrScript;
  String get scrScript => _$this._scrScript;
  set scrScript(String scrScript) => _$this._scrScript = scrScript;

  String _scrDescription;
  String get scrDescription => _$this._scrDescription;
  set scrDescription(String scrDescription) =>
      _$this._scrDescription = scrDescription;

  String _scrDescriptionType;
  String get scrDescriptionType => _$this._scrDescriptionType;
  set scrDescriptionType(String scrDescriptionType) =>
      _$this._scrDescriptionType = scrDescriptionType;

  String _scrSurnameType;
  String get scrSurnameType => _$this._scrSurnameType;
  set scrSurnameType(String scrSurnameType) =>
      _$this._scrSurnameType = scrSurnameType;

  String _scrAbout1;
  String get scrAbout1 => _$this._scrAbout1;
  set scrAbout1(String scrAbout1) => _$this._scrAbout1 = scrAbout1;

  String _scrImage;
  String get scrImage => _$this._scrImage;
  set scrImage(String scrImage) => _$this._scrImage = scrImage;

  bool _scrIspartname;
  bool get scrIspartname => _$this._scrIspartname;
  set scrIspartname(bool scrIspartname) =>
      _$this._scrIspartname = scrIspartname;

  bool _scrKeyword;
  bool get scrKeyword => _$this._scrKeyword;
  set scrKeyword(bool scrKeyword) => _$this._scrKeyword = scrKeyword;

  String _scrTratativa;
  String get scrTratativa => _$this._scrTratativa;
  set scrTratativa(String scrTratativa) => _$this._scrTratativa = scrTratativa;

  String _scrCategoria;
  String get scrCategoria => _$this._scrCategoria;
  set scrCategoria(String scrCategoria) => _$this._scrCategoria = scrCategoria;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdScriptRecordBuilder() {
    ProdScriptRecord._initializeBuilder(this);
  }

  ProdScriptRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scrScript = $v.scrScript;
      _scrDescription = $v.scrDescription;
      _scrDescriptionType = $v.scrDescriptionType;
      _scrSurnameType = $v.scrSurnameType;
      _scrAbout1 = $v.scrAbout1;
      _scrImage = $v.scrImage;
      _scrIspartname = $v.scrIspartname;
      _scrKeyword = $v.scrKeyword;
      _scrTratativa = $v.scrTratativa;
      _scrCategoria = $v.scrCategoria;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdScriptRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdScriptRecord;
  }

  @override
  void update(void Function(ProdScriptRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdScriptRecord build() {
    final _$result = _$v ??
        new _$ProdScriptRecord._(
            scrScript: scrScript,
            scrDescription: scrDescription,
            scrDescriptionType: scrDescriptionType,
            scrSurnameType: scrSurnameType,
            scrAbout1: scrAbout1,
            scrImage: scrImage,
            scrIspartname: scrIspartname,
            scrKeyword: scrKeyword,
            scrTratativa: scrTratativa,
            scrCategoria: scrCategoria,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
