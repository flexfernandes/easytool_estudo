// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prod_product_parameter_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProdProductParameterRecord> _$prodProductParameterRecordSerializer =
    new _$ProdProductParameterRecordSerializer();

class _$ProdProductParameterRecordSerializer
    implements StructuredSerializer<ProdProductParameterRecord> {
  @override
  final Iterable<Type> types = const [
    ProdProductParameterRecord,
    _$ProdProductParameterRecord
  ];
  @override
  final String wireName = 'ProdProductParameterRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProdProductParameterRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.scrId;
    if (value != null) {
      result
        ..add('scr_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.parCode;
    if (value != null) {
      result
        ..add('par_code')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parProductreference;
    if (value != null) {
      result
        ..add('par_productreference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parDescription;
    if (value != null) {
      result
        ..add('par_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parContext;
    if (value != null) {
      result
        ..add('par_context')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parHtml;
    if (value != null) {
      result
        ..add('par_html')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parHeight;
    if (value != null) {
      result
        ..add('par_height')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.parLength;
    if (value != null) {
      result
        ..add('par_length')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.parLargura;
    if (value != null) {
      result
        ..add('par_largura')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.parWeight1;
    if (value != null) {
      result
        ..add('par_weight1')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.parWeight2;
    if (value != null) {
      result
        ..add('par_weight2')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.parValue;
    if (value != null) {
      result
        ..add('par_value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.parSel01;
    if (value != null) {
      result
        ..add('par_sel01')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel02;
    if (value != null) {
      result
        ..add('par_sel02')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel03;
    if (value != null) {
      result
        ..add('par_sel03')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel04;
    if (value != null) {
      result
        ..add('par_sel04')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel05;
    if (value != null) {
      result
        ..add('par_sel05')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel06;
    if (value != null) {
      result
        ..add('par_sel06')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel07;
    if (value != null) {
      result
        ..add('par_sel07')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel08;
    if (value != null) {
      result
        ..add('par_sel08')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel09;
    if (value != null) {
      result
        ..add('par_sel09')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel10;
    if (value != null) {
      result
        ..add('par_sel10')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel11;
    if (value != null) {
      result
        ..add('par_sel11')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel12;
    if (value != null) {
      result
        ..add('par_sel12')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel13;
    if (value != null) {
      result
        ..add('par_sel13')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel14;
    if (value != null) {
      result
        ..add('par_sel14')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel15;
    if (value != null) {
      result
        ..add('par_sel15')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel16;
    if (value != null) {
      result
        ..add('par_sel16')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel17;
    if (value != null) {
      result
        ..add('par_sel17')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel18;
    if (value != null) {
      result
        ..add('par_sel18')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel19;
    if (value != null) {
      result
        ..add('par_sel19')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel20;
    if (value != null) {
      result
        ..add('par_sel20')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel21;
    if (value != null) {
      result
        ..add('par_sel21')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel22;
    if (value != null) {
      result
        ..add('par_sel22')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel23;
    if (value != null) {
      result
        ..add('par_sel23')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel24;
    if (value != null) {
      result
        ..add('par_sel24')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.parSel25;
    if (value != null) {
      result
        ..add('par_sel25')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.dateCreate;
    if (value != null) {
      result
        ..add('dateCreate')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.parSelect;
    if (value != null) {
      result
        ..add('par_select')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.parDateProcessing;
    if (value != null) {
      result
        ..add('par_dateProcessing')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.parImg;
    if (value != null) {
      result
        ..add('par_img')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.parOrder;
    if (value != null) {
      result
        ..add('par_order')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.prodSituacao;
    if (value != null) {
      result
        ..add('prod_situacao')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.prodUnidade;
    if (value != null) {
      result
        ..add('prod_unidade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodOrigem;
    if (value != null) {
      result
        ..add('prod_origem')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodNcm;
    if (value != null) {
      result
        ..add('prod_ncm')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodCest;
    if (value != null) {
      result
        ..add('prod_cest')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodVrpromocao;
    if (value != null) {
      result
        ..add('prod_vrpromocao')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.prodEstoque;
    if (value != null) {
      result
        ..add('prod_estoque')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.prodCusto;
    if (value != null) {
      result
        ..add('prod_custo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.prodEstminimo;
    if (value != null) {
      result
        ..add('prod_estminimo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.prodEstmaximo;
    if (value != null) {
      result
        ..add('prod_estmaximo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.prodFretegratis;
    if (value != null) {
      result
        ..add('prod_fretegratis')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.prodLinkvideo;
    if (value != null) {
      result
        ..add('prod_linkvideo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodMarca;
    if (value != null) {
      result
        ..add('prod_marca')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodPalavraschave;
    if (value != null) {
      result
        ..add('prod_palavraschave')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.prodCategorias;
    if (value != null) {
      result
        ..add('prod_categorias')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prodComplemento;
    if (value != null) {
      result
        ..add('prod_complemento')
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
  ProdProductParameterRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProdProductParameterRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'scr_id':
          result.scrId = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'par_code':
          result.parCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'par_productreference':
          result.parProductreference = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'par_description':
          result.parDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'par_context':
          result.parContext = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'par_html':
          result.parHtml = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'par_height':
          result.parHeight = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'par_length':
          result.parLength = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'par_largura':
          result.parLargura = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'par_weight1':
          result.parWeight1 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'par_weight2':
          result.parWeight2 = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'par_value':
          result.parValue = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'par_sel01':
          result.parSel01.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel02':
          result.parSel02.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel03':
          result.parSel03.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel04':
          result.parSel04.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel05':
          result.parSel05.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel06':
          result.parSel06.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel07':
          result.parSel07.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel08':
          result.parSel08.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel09':
          result.parSel09.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel10':
          result.parSel10.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel11':
          result.parSel11.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel12':
          result.parSel12.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel13':
          result.parSel13.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel14':
          result.parSel14.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel15':
          result.parSel15.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel16':
          result.parSel16.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel17':
          result.parSel17.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel18':
          result.parSel18.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel19':
          result.parSel19.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel20':
          result.parSel20.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel21':
          result.parSel21.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel22':
          result.parSel22.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel23':
          result.parSel23.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel24':
          result.parSel24.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'par_sel25':
          result.parSel25.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'dateCreate':
          result.dateCreate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'par_select':
          result.parSelect = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'par_dateProcessing':
          result.parDateProcessing = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'par_img':
          result.parImg = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'par_order':
          result.parOrder = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'prod_situacao':
          result.prodSituacao = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'prod_unidade':
          result.prodUnidade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_origem':
          result.prodOrigem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_ncm':
          result.prodNcm = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_cest':
          result.prodCest = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_vrpromocao':
          result.prodVrpromocao = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'prod_estoque':
          result.prodEstoque = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'prod_custo':
          result.prodCusto = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'prod_estminimo':
          result.prodEstminimo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'prod_estmaximo':
          result.prodEstmaximo = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'prod_fretegratis':
          result.prodFretegratis = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'prod_linkvideo':
          result.prodLinkvideo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_marca':
          result.prodMarca = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_palavraschave':
          result.prodPalavraschave.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'prod_categorias':
          result.prodCategorias = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prod_complemento':
          result.prodComplemento = serializers.deserialize(value,
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

class _$ProdProductParameterRecord extends ProdProductParameterRecord {
  @override
  final DocumentReference<Object> scrId;
  @override
  final String parCode;
  @override
  final String parProductreference;
  @override
  final String parDescription;
  @override
  final String parContext;
  @override
  final String parHtml;
  @override
  final double parHeight;
  @override
  final double parLength;
  @override
  final double parLargura;
  @override
  final double parWeight1;
  @override
  final double parWeight2;
  @override
  final double parValue;
  @override
  final BuiltList<String> parSel01;
  @override
  final BuiltList<String> parSel02;
  @override
  final BuiltList<String> parSel03;
  @override
  final BuiltList<String> parSel04;
  @override
  final BuiltList<String> parSel05;
  @override
  final BuiltList<String> parSel06;
  @override
  final BuiltList<String> parSel07;
  @override
  final BuiltList<String> parSel08;
  @override
  final BuiltList<String> parSel09;
  @override
  final BuiltList<String> parSel10;
  @override
  final BuiltList<String> parSel11;
  @override
  final BuiltList<String> parSel12;
  @override
  final BuiltList<String> parSel13;
  @override
  final BuiltList<String> parSel14;
  @override
  final BuiltList<String> parSel15;
  @override
  final BuiltList<String> parSel16;
  @override
  final BuiltList<String> parSel17;
  @override
  final BuiltList<String> parSel18;
  @override
  final BuiltList<String> parSel19;
  @override
  final BuiltList<String> parSel20;
  @override
  final BuiltList<String> parSel21;
  @override
  final BuiltList<String> parSel22;
  @override
  final BuiltList<String> parSel23;
  @override
  final BuiltList<String> parSel24;
  @override
  final BuiltList<String> parSel25;
  @override
  final DateTime dateCreate;
  @override
  final bool parSelect;
  @override
  final DateTime parDateProcessing;
  @override
  final String parImg;
  @override
  final int parOrder;
  @override
  final bool prodSituacao;
  @override
  final String prodUnidade;
  @override
  final String prodOrigem;
  @override
  final String prodNcm;
  @override
  final String prodCest;
  @override
  final double prodVrpromocao;
  @override
  final double prodEstoque;
  @override
  final double prodCusto;
  @override
  final double prodEstminimo;
  @override
  final double prodEstmaximo;
  @override
  final bool prodFretegratis;
  @override
  final String prodLinkvideo;
  @override
  final String prodMarca;
  @override
  final BuiltList<String> prodPalavraschave;
  @override
  final String prodCategorias;
  @override
  final String prodComplemento;
  @override
  final DocumentReference<Object> reference;

  factory _$ProdProductParameterRecord(
          [void Function(ProdProductParameterRecordBuilder) updates]) =>
      (new ProdProductParameterRecordBuilder()..update(updates)).build();

  _$ProdProductParameterRecord._(
      {this.scrId,
      this.parCode,
      this.parProductreference,
      this.parDescription,
      this.parContext,
      this.parHtml,
      this.parHeight,
      this.parLength,
      this.parLargura,
      this.parWeight1,
      this.parWeight2,
      this.parValue,
      this.parSel01,
      this.parSel02,
      this.parSel03,
      this.parSel04,
      this.parSel05,
      this.parSel06,
      this.parSel07,
      this.parSel08,
      this.parSel09,
      this.parSel10,
      this.parSel11,
      this.parSel12,
      this.parSel13,
      this.parSel14,
      this.parSel15,
      this.parSel16,
      this.parSel17,
      this.parSel18,
      this.parSel19,
      this.parSel20,
      this.parSel21,
      this.parSel22,
      this.parSel23,
      this.parSel24,
      this.parSel25,
      this.dateCreate,
      this.parSelect,
      this.parDateProcessing,
      this.parImg,
      this.parOrder,
      this.prodSituacao,
      this.prodUnidade,
      this.prodOrigem,
      this.prodNcm,
      this.prodCest,
      this.prodVrpromocao,
      this.prodEstoque,
      this.prodCusto,
      this.prodEstminimo,
      this.prodEstmaximo,
      this.prodFretegratis,
      this.prodLinkvideo,
      this.prodMarca,
      this.prodPalavraschave,
      this.prodCategorias,
      this.prodComplemento,
      this.reference})
      : super._();

  @override
  ProdProductParameterRecord rebuild(
          void Function(ProdProductParameterRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProdProductParameterRecordBuilder toBuilder() =>
      new ProdProductParameterRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProdProductParameterRecord &&
        scrId == other.scrId &&
        parCode == other.parCode &&
        parProductreference == other.parProductreference &&
        parDescription == other.parDescription &&
        parContext == other.parContext &&
        parHtml == other.parHtml &&
        parHeight == other.parHeight &&
        parLength == other.parLength &&
        parLargura == other.parLargura &&
        parWeight1 == other.parWeight1 &&
        parWeight2 == other.parWeight2 &&
        parValue == other.parValue &&
        parSel01 == other.parSel01 &&
        parSel02 == other.parSel02 &&
        parSel03 == other.parSel03 &&
        parSel04 == other.parSel04 &&
        parSel05 == other.parSel05 &&
        parSel06 == other.parSel06 &&
        parSel07 == other.parSel07 &&
        parSel08 == other.parSel08 &&
        parSel09 == other.parSel09 &&
        parSel10 == other.parSel10 &&
        parSel11 == other.parSel11 &&
        parSel12 == other.parSel12 &&
        parSel13 == other.parSel13 &&
        parSel14 == other.parSel14 &&
        parSel15 == other.parSel15 &&
        parSel16 == other.parSel16 &&
        parSel17 == other.parSel17 &&
        parSel18 == other.parSel18 &&
        parSel19 == other.parSel19 &&
        parSel20 == other.parSel20 &&
        parSel21 == other.parSel21 &&
        parSel22 == other.parSel22 &&
        parSel23 == other.parSel23 &&
        parSel24 == other.parSel24 &&
        parSel25 == other.parSel25 &&
        dateCreate == other.dateCreate &&
        parSelect == other.parSelect &&
        parDateProcessing == other.parDateProcessing &&
        parImg == other.parImg &&
        parOrder == other.parOrder &&
        prodSituacao == other.prodSituacao &&
        prodUnidade == other.prodUnidade &&
        prodOrigem == other.prodOrigem &&
        prodNcm == other.prodNcm &&
        prodCest == other.prodCest &&
        prodVrpromocao == other.prodVrpromocao &&
        prodEstoque == other.prodEstoque &&
        prodCusto == other.prodCusto &&
        prodEstminimo == other.prodEstminimo &&
        prodEstmaximo == other.prodEstmaximo &&
        prodFretegratis == other.prodFretegratis &&
        prodLinkvideo == other.prodLinkvideo &&
        prodMarca == other.prodMarca &&
        prodPalavraschave == other.prodPalavraschave &&
        prodCategorias == other.prodCategorias &&
        prodComplemento == other.prodComplemento &&
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, scrId.hashCode), parCode.hashCode), parProductreference.hashCode), parDescription.hashCode), parContext.hashCode), parHtml.hashCode), parHeight.hashCode), parLength.hashCode), parLargura.hashCode), parWeight1.hashCode), parWeight2.hashCode), parValue.hashCode), parSel01.hashCode), parSel02.hashCode), parSel03.hashCode), parSel04.hashCode), parSel05.hashCode), parSel06.hashCode), parSel07.hashCode), parSel08.hashCode), parSel09.hashCode), parSel10.hashCode), parSel11.hashCode), parSel12.hashCode), parSel13.hashCode), parSel14.hashCode), parSel15.hashCode), parSel16.hashCode), parSel17.hashCode), parSel18.hashCode), parSel19.hashCode), parSel20.hashCode), parSel21.hashCode), parSel22.hashCode), parSel23.hashCode), parSel24.hashCode), parSel25.hashCode), dateCreate.hashCode), parSelect.hashCode), parDateProcessing.hashCode),
                                                                                parImg.hashCode),
                                                                            parOrder.hashCode),
                                                                        prodSituacao.hashCode),
                                                                    prodUnidade.hashCode),
                                                                prodOrigem.hashCode),
                                                            prodNcm.hashCode),
                                                        prodCest.hashCode),
                                                    prodVrpromocao.hashCode),
                                                prodEstoque.hashCode),
                                            prodCusto.hashCode),
                                        prodEstminimo.hashCode),
                                    prodEstmaximo.hashCode),
                                prodFretegratis.hashCode),
                            prodLinkvideo.hashCode),
                        prodMarca.hashCode),
                    prodPalavraschave.hashCode),
                prodCategorias.hashCode),
            prodComplemento.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProdProductParameterRecord')
          ..add('scrId', scrId)
          ..add('parCode', parCode)
          ..add('parProductreference', parProductreference)
          ..add('parDescription', parDescription)
          ..add('parContext', parContext)
          ..add('parHtml', parHtml)
          ..add('parHeight', parHeight)
          ..add('parLength', parLength)
          ..add('parLargura', parLargura)
          ..add('parWeight1', parWeight1)
          ..add('parWeight2', parWeight2)
          ..add('parValue', parValue)
          ..add('parSel01', parSel01)
          ..add('parSel02', parSel02)
          ..add('parSel03', parSel03)
          ..add('parSel04', parSel04)
          ..add('parSel05', parSel05)
          ..add('parSel06', parSel06)
          ..add('parSel07', parSel07)
          ..add('parSel08', parSel08)
          ..add('parSel09', parSel09)
          ..add('parSel10', parSel10)
          ..add('parSel11', parSel11)
          ..add('parSel12', parSel12)
          ..add('parSel13', parSel13)
          ..add('parSel14', parSel14)
          ..add('parSel15', parSel15)
          ..add('parSel16', parSel16)
          ..add('parSel17', parSel17)
          ..add('parSel18', parSel18)
          ..add('parSel19', parSel19)
          ..add('parSel20', parSel20)
          ..add('parSel21', parSel21)
          ..add('parSel22', parSel22)
          ..add('parSel23', parSel23)
          ..add('parSel24', parSel24)
          ..add('parSel25', parSel25)
          ..add('dateCreate', dateCreate)
          ..add('parSelect', parSelect)
          ..add('parDateProcessing', parDateProcessing)
          ..add('parImg', parImg)
          ..add('parOrder', parOrder)
          ..add('prodSituacao', prodSituacao)
          ..add('prodUnidade', prodUnidade)
          ..add('prodOrigem', prodOrigem)
          ..add('prodNcm', prodNcm)
          ..add('prodCest', prodCest)
          ..add('prodVrpromocao', prodVrpromocao)
          ..add('prodEstoque', prodEstoque)
          ..add('prodCusto', prodCusto)
          ..add('prodEstminimo', prodEstminimo)
          ..add('prodEstmaximo', prodEstmaximo)
          ..add('prodFretegratis', prodFretegratis)
          ..add('prodLinkvideo', prodLinkvideo)
          ..add('prodMarca', prodMarca)
          ..add('prodPalavraschave', prodPalavraschave)
          ..add('prodCategorias', prodCategorias)
          ..add('prodComplemento', prodComplemento)
          ..add('reference', reference))
        .toString();
  }
}

class ProdProductParameterRecordBuilder
    implements
        Builder<ProdProductParameterRecord, ProdProductParameterRecordBuilder> {
  _$ProdProductParameterRecord _$v;

  DocumentReference<Object> _scrId;
  DocumentReference<Object> get scrId => _$this._scrId;
  set scrId(DocumentReference<Object> scrId) => _$this._scrId = scrId;

  String _parCode;
  String get parCode => _$this._parCode;
  set parCode(String parCode) => _$this._parCode = parCode;

  String _parProductreference;
  String get parProductreference => _$this._parProductreference;
  set parProductreference(String parProductreference) =>
      _$this._parProductreference = parProductreference;

  String _parDescription;
  String get parDescription => _$this._parDescription;
  set parDescription(String parDescription) =>
      _$this._parDescription = parDescription;

  String _parContext;
  String get parContext => _$this._parContext;
  set parContext(String parContext) => _$this._parContext = parContext;

  String _parHtml;
  String get parHtml => _$this._parHtml;
  set parHtml(String parHtml) => _$this._parHtml = parHtml;

  double _parHeight;
  double get parHeight => _$this._parHeight;
  set parHeight(double parHeight) => _$this._parHeight = parHeight;

  double _parLength;
  double get parLength => _$this._parLength;
  set parLength(double parLength) => _$this._parLength = parLength;

  double _parLargura;
  double get parLargura => _$this._parLargura;
  set parLargura(double parLargura) => _$this._parLargura = parLargura;

  double _parWeight1;
  double get parWeight1 => _$this._parWeight1;
  set parWeight1(double parWeight1) => _$this._parWeight1 = parWeight1;

  double _parWeight2;
  double get parWeight2 => _$this._parWeight2;
  set parWeight2(double parWeight2) => _$this._parWeight2 = parWeight2;

  double _parValue;
  double get parValue => _$this._parValue;
  set parValue(double parValue) => _$this._parValue = parValue;

  ListBuilder<String> _parSel01;
  ListBuilder<String> get parSel01 =>
      _$this._parSel01 ??= new ListBuilder<String>();
  set parSel01(ListBuilder<String> parSel01) => _$this._parSel01 = parSel01;

  ListBuilder<String> _parSel02;
  ListBuilder<String> get parSel02 =>
      _$this._parSel02 ??= new ListBuilder<String>();
  set parSel02(ListBuilder<String> parSel02) => _$this._parSel02 = parSel02;

  ListBuilder<String> _parSel03;
  ListBuilder<String> get parSel03 =>
      _$this._parSel03 ??= new ListBuilder<String>();
  set parSel03(ListBuilder<String> parSel03) => _$this._parSel03 = parSel03;

  ListBuilder<String> _parSel04;
  ListBuilder<String> get parSel04 =>
      _$this._parSel04 ??= new ListBuilder<String>();
  set parSel04(ListBuilder<String> parSel04) => _$this._parSel04 = parSel04;

  ListBuilder<String> _parSel05;
  ListBuilder<String> get parSel05 =>
      _$this._parSel05 ??= new ListBuilder<String>();
  set parSel05(ListBuilder<String> parSel05) => _$this._parSel05 = parSel05;

  ListBuilder<String> _parSel06;
  ListBuilder<String> get parSel06 =>
      _$this._parSel06 ??= new ListBuilder<String>();
  set parSel06(ListBuilder<String> parSel06) => _$this._parSel06 = parSel06;

  ListBuilder<String> _parSel07;
  ListBuilder<String> get parSel07 =>
      _$this._parSel07 ??= new ListBuilder<String>();
  set parSel07(ListBuilder<String> parSel07) => _$this._parSel07 = parSel07;

  ListBuilder<String> _parSel08;
  ListBuilder<String> get parSel08 =>
      _$this._parSel08 ??= new ListBuilder<String>();
  set parSel08(ListBuilder<String> parSel08) => _$this._parSel08 = parSel08;

  ListBuilder<String> _parSel09;
  ListBuilder<String> get parSel09 =>
      _$this._parSel09 ??= new ListBuilder<String>();
  set parSel09(ListBuilder<String> parSel09) => _$this._parSel09 = parSel09;

  ListBuilder<String> _parSel10;
  ListBuilder<String> get parSel10 =>
      _$this._parSel10 ??= new ListBuilder<String>();
  set parSel10(ListBuilder<String> parSel10) => _$this._parSel10 = parSel10;

  ListBuilder<String> _parSel11;
  ListBuilder<String> get parSel11 =>
      _$this._parSel11 ??= new ListBuilder<String>();
  set parSel11(ListBuilder<String> parSel11) => _$this._parSel11 = parSel11;

  ListBuilder<String> _parSel12;
  ListBuilder<String> get parSel12 =>
      _$this._parSel12 ??= new ListBuilder<String>();
  set parSel12(ListBuilder<String> parSel12) => _$this._parSel12 = parSel12;

  ListBuilder<String> _parSel13;
  ListBuilder<String> get parSel13 =>
      _$this._parSel13 ??= new ListBuilder<String>();
  set parSel13(ListBuilder<String> parSel13) => _$this._parSel13 = parSel13;

  ListBuilder<String> _parSel14;
  ListBuilder<String> get parSel14 =>
      _$this._parSel14 ??= new ListBuilder<String>();
  set parSel14(ListBuilder<String> parSel14) => _$this._parSel14 = parSel14;

  ListBuilder<String> _parSel15;
  ListBuilder<String> get parSel15 =>
      _$this._parSel15 ??= new ListBuilder<String>();
  set parSel15(ListBuilder<String> parSel15) => _$this._parSel15 = parSel15;

  ListBuilder<String> _parSel16;
  ListBuilder<String> get parSel16 =>
      _$this._parSel16 ??= new ListBuilder<String>();
  set parSel16(ListBuilder<String> parSel16) => _$this._parSel16 = parSel16;

  ListBuilder<String> _parSel17;
  ListBuilder<String> get parSel17 =>
      _$this._parSel17 ??= new ListBuilder<String>();
  set parSel17(ListBuilder<String> parSel17) => _$this._parSel17 = parSel17;

  ListBuilder<String> _parSel18;
  ListBuilder<String> get parSel18 =>
      _$this._parSel18 ??= new ListBuilder<String>();
  set parSel18(ListBuilder<String> parSel18) => _$this._parSel18 = parSel18;

  ListBuilder<String> _parSel19;
  ListBuilder<String> get parSel19 =>
      _$this._parSel19 ??= new ListBuilder<String>();
  set parSel19(ListBuilder<String> parSel19) => _$this._parSel19 = parSel19;

  ListBuilder<String> _parSel20;
  ListBuilder<String> get parSel20 =>
      _$this._parSel20 ??= new ListBuilder<String>();
  set parSel20(ListBuilder<String> parSel20) => _$this._parSel20 = parSel20;

  ListBuilder<String> _parSel21;
  ListBuilder<String> get parSel21 =>
      _$this._parSel21 ??= new ListBuilder<String>();
  set parSel21(ListBuilder<String> parSel21) => _$this._parSel21 = parSel21;

  ListBuilder<String> _parSel22;
  ListBuilder<String> get parSel22 =>
      _$this._parSel22 ??= new ListBuilder<String>();
  set parSel22(ListBuilder<String> parSel22) => _$this._parSel22 = parSel22;

  ListBuilder<String> _parSel23;
  ListBuilder<String> get parSel23 =>
      _$this._parSel23 ??= new ListBuilder<String>();
  set parSel23(ListBuilder<String> parSel23) => _$this._parSel23 = parSel23;

  ListBuilder<String> _parSel24;
  ListBuilder<String> get parSel24 =>
      _$this._parSel24 ??= new ListBuilder<String>();
  set parSel24(ListBuilder<String> parSel24) => _$this._parSel24 = parSel24;

  ListBuilder<String> _parSel25;
  ListBuilder<String> get parSel25 =>
      _$this._parSel25 ??= new ListBuilder<String>();
  set parSel25(ListBuilder<String> parSel25) => _$this._parSel25 = parSel25;

  DateTime _dateCreate;
  DateTime get dateCreate => _$this._dateCreate;
  set dateCreate(DateTime dateCreate) => _$this._dateCreate = dateCreate;

  bool _parSelect;
  bool get parSelect => _$this._parSelect;
  set parSelect(bool parSelect) => _$this._parSelect = parSelect;

  DateTime _parDateProcessing;
  DateTime get parDateProcessing => _$this._parDateProcessing;
  set parDateProcessing(DateTime parDateProcessing) =>
      _$this._parDateProcessing = parDateProcessing;

  String _parImg;
  String get parImg => _$this._parImg;
  set parImg(String parImg) => _$this._parImg = parImg;

  int _parOrder;
  int get parOrder => _$this._parOrder;
  set parOrder(int parOrder) => _$this._parOrder = parOrder;

  bool _prodSituacao;
  bool get prodSituacao => _$this._prodSituacao;
  set prodSituacao(bool prodSituacao) => _$this._prodSituacao = prodSituacao;

  String _prodUnidade;
  String get prodUnidade => _$this._prodUnidade;
  set prodUnidade(String prodUnidade) => _$this._prodUnidade = prodUnidade;

  String _prodOrigem;
  String get prodOrigem => _$this._prodOrigem;
  set prodOrigem(String prodOrigem) => _$this._prodOrigem = prodOrigem;

  String _prodNcm;
  String get prodNcm => _$this._prodNcm;
  set prodNcm(String prodNcm) => _$this._prodNcm = prodNcm;

  String _prodCest;
  String get prodCest => _$this._prodCest;
  set prodCest(String prodCest) => _$this._prodCest = prodCest;

  double _prodVrpromocao;
  double get prodVrpromocao => _$this._prodVrpromocao;
  set prodVrpromocao(double prodVrpromocao) =>
      _$this._prodVrpromocao = prodVrpromocao;

  double _prodEstoque;
  double get prodEstoque => _$this._prodEstoque;
  set prodEstoque(double prodEstoque) => _$this._prodEstoque = prodEstoque;

  double _prodCusto;
  double get prodCusto => _$this._prodCusto;
  set prodCusto(double prodCusto) => _$this._prodCusto = prodCusto;

  double _prodEstminimo;
  double get prodEstminimo => _$this._prodEstminimo;
  set prodEstminimo(double prodEstminimo) =>
      _$this._prodEstminimo = prodEstminimo;

  double _prodEstmaximo;
  double get prodEstmaximo => _$this._prodEstmaximo;
  set prodEstmaximo(double prodEstmaximo) =>
      _$this._prodEstmaximo = prodEstmaximo;

  bool _prodFretegratis;
  bool get prodFretegratis => _$this._prodFretegratis;
  set prodFretegratis(bool prodFretegratis) =>
      _$this._prodFretegratis = prodFretegratis;

  String _prodLinkvideo;
  String get prodLinkvideo => _$this._prodLinkvideo;
  set prodLinkvideo(String prodLinkvideo) =>
      _$this._prodLinkvideo = prodLinkvideo;

  String _prodMarca;
  String get prodMarca => _$this._prodMarca;
  set prodMarca(String prodMarca) => _$this._prodMarca = prodMarca;

  ListBuilder<String> _prodPalavraschave;
  ListBuilder<String> get prodPalavraschave =>
      _$this._prodPalavraschave ??= new ListBuilder<String>();
  set prodPalavraschave(ListBuilder<String> prodPalavraschave) =>
      _$this._prodPalavraschave = prodPalavraschave;

  String _prodCategorias;
  String get prodCategorias => _$this._prodCategorias;
  set prodCategorias(String prodCategorias) =>
      _$this._prodCategorias = prodCategorias;

  String _prodComplemento;
  String get prodComplemento => _$this._prodComplemento;
  set prodComplemento(String prodComplemento) =>
      _$this._prodComplemento = prodComplemento;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  ProdProductParameterRecordBuilder() {
    ProdProductParameterRecord._initializeBuilder(this);
  }

  ProdProductParameterRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _scrId = $v.scrId;
      _parCode = $v.parCode;
      _parProductreference = $v.parProductreference;
      _parDescription = $v.parDescription;
      _parContext = $v.parContext;
      _parHtml = $v.parHtml;
      _parHeight = $v.parHeight;
      _parLength = $v.parLength;
      _parLargura = $v.parLargura;
      _parWeight1 = $v.parWeight1;
      _parWeight2 = $v.parWeight2;
      _parValue = $v.parValue;
      _parSel01 = $v.parSel01?.toBuilder();
      _parSel02 = $v.parSel02?.toBuilder();
      _parSel03 = $v.parSel03?.toBuilder();
      _parSel04 = $v.parSel04?.toBuilder();
      _parSel05 = $v.parSel05?.toBuilder();
      _parSel06 = $v.parSel06?.toBuilder();
      _parSel07 = $v.parSel07?.toBuilder();
      _parSel08 = $v.parSel08?.toBuilder();
      _parSel09 = $v.parSel09?.toBuilder();
      _parSel10 = $v.parSel10?.toBuilder();
      _parSel11 = $v.parSel11?.toBuilder();
      _parSel12 = $v.parSel12?.toBuilder();
      _parSel13 = $v.parSel13?.toBuilder();
      _parSel14 = $v.parSel14?.toBuilder();
      _parSel15 = $v.parSel15?.toBuilder();
      _parSel16 = $v.parSel16?.toBuilder();
      _parSel17 = $v.parSel17?.toBuilder();
      _parSel18 = $v.parSel18?.toBuilder();
      _parSel19 = $v.parSel19?.toBuilder();
      _parSel20 = $v.parSel20?.toBuilder();
      _parSel21 = $v.parSel21?.toBuilder();
      _parSel22 = $v.parSel22?.toBuilder();
      _parSel23 = $v.parSel23?.toBuilder();
      _parSel24 = $v.parSel24?.toBuilder();
      _parSel25 = $v.parSel25?.toBuilder();
      _dateCreate = $v.dateCreate;
      _parSelect = $v.parSelect;
      _parDateProcessing = $v.parDateProcessing;
      _parImg = $v.parImg;
      _parOrder = $v.parOrder;
      _prodSituacao = $v.prodSituacao;
      _prodUnidade = $v.prodUnidade;
      _prodOrigem = $v.prodOrigem;
      _prodNcm = $v.prodNcm;
      _prodCest = $v.prodCest;
      _prodVrpromocao = $v.prodVrpromocao;
      _prodEstoque = $v.prodEstoque;
      _prodCusto = $v.prodCusto;
      _prodEstminimo = $v.prodEstminimo;
      _prodEstmaximo = $v.prodEstmaximo;
      _prodFretegratis = $v.prodFretegratis;
      _prodLinkvideo = $v.prodLinkvideo;
      _prodMarca = $v.prodMarca;
      _prodPalavraschave = $v.prodPalavraschave?.toBuilder();
      _prodCategorias = $v.prodCategorias;
      _prodComplemento = $v.prodComplemento;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProdProductParameterRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProdProductParameterRecord;
  }

  @override
  void update(void Function(ProdProductParameterRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProdProductParameterRecord build() {
    _$ProdProductParameterRecord _$result;
    try {
      _$result = _$v ??
          new _$ProdProductParameterRecord._(
              scrId: scrId,
              parCode: parCode,
              parProductreference: parProductreference,
              parDescription: parDescription,
              parContext: parContext,
              parHtml: parHtml,
              parHeight: parHeight,
              parLength: parLength,
              parLargura: parLargura,
              parWeight1: parWeight1,
              parWeight2: parWeight2,
              parValue: parValue,
              parSel01: _parSel01?.build(),
              parSel02: _parSel02?.build(),
              parSel03: _parSel03?.build(),
              parSel04: _parSel04?.build(),
              parSel05: _parSel05?.build(),
              parSel06: _parSel06?.build(),
              parSel07: _parSel07?.build(),
              parSel08: _parSel08?.build(),
              parSel09: _parSel09?.build(),
              parSel10: _parSel10?.build(),
              parSel11: _parSel11?.build(),
              parSel12: _parSel12?.build(),
              parSel13: _parSel13?.build(),
              parSel14: _parSel14?.build(),
              parSel15: _parSel15?.build(),
              parSel16: _parSel16?.build(),
              parSel17: _parSel17?.build(),
              parSel18: _parSel18?.build(),
              parSel19: _parSel19?.build(),
              parSel20: _parSel20?.build(),
              parSel21: _parSel21?.build(),
              parSel22: _parSel22?.build(),
              parSel23: _parSel23?.build(),
              parSel24: _parSel24?.build(),
              parSel25: _parSel25?.build(),
              dateCreate: dateCreate,
              parSelect: parSelect,
              parDateProcessing: parDateProcessing,
              parImg: parImg,
              parOrder: parOrder,
              prodSituacao: prodSituacao,
              prodUnidade: prodUnidade,
              prodOrigem: prodOrigem,
              prodNcm: prodNcm,
              prodCest: prodCest,
              prodVrpromocao: prodVrpromocao,
              prodEstoque: prodEstoque,
              prodCusto: prodCusto,
              prodEstminimo: prodEstminimo,
              prodEstmaximo: prodEstmaximo,
              prodFretegratis: prodFretegratis,
              prodLinkvideo: prodLinkvideo,
              prodMarca: prodMarca,
              prodPalavraschave: _prodPalavraschave?.build(),
              prodCategorias: prodCategorias,
              prodComplemento: prodComplemento,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'parSel01';
        _parSel01?.build();
        _$failedField = 'parSel02';
        _parSel02?.build();
        _$failedField = 'parSel03';
        _parSel03?.build();
        _$failedField = 'parSel04';
        _parSel04?.build();
        _$failedField = 'parSel05';
        _parSel05?.build();
        _$failedField = 'parSel06';
        _parSel06?.build();
        _$failedField = 'parSel07';
        _parSel07?.build();
        _$failedField = 'parSel08';
        _parSel08?.build();
        _$failedField = 'parSel09';
        _parSel09?.build();
        _$failedField = 'parSel10';
        _parSel10?.build();
        _$failedField = 'parSel11';
        _parSel11?.build();
        _$failedField = 'parSel12';
        _parSel12?.build();
        _$failedField = 'parSel13';
        _parSel13?.build();
        _$failedField = 'parSel14';
        _parSel14?.build();
        _$failedField = 'parSel15';
        _parSel15?.build();
        _$failedField = 'parSel16';
        _parSel16?.build();
        _$failedField = 'parSel17';
        _parSel17?.build();
        _$failedField = 'parSel18';
        _parSel18?.build();
        _$failedField = 'parSel19';
        _parSel19?.build();
        _$failedField = 'parSel20';
        _parSel20?.build();
        _$failedField = 'parSel21';
        _parSel21?.build();
        _$failedField = 'parSel22';
        _parSel22?.build();
        _$failedField = 'parSel23';
        _parSel23?.build();
        _$failedField = 'parSel24';
        _parSel24?.build();
        _$failedField = 'parSel25';
        _parSel25?.build();

        _$failedField = 'prodPalavraschave';
        _prodPalavraschave?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProdProductParameterRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
