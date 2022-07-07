// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<String> exportBling(DocumentReference scrID) async {
  //     .where('scr_id', isEqualTo: 'prod_script/sOysFXEsr8N5LqxsVr2Z')

  QuerySnapshot query_prod = await FirebaseFirestore.instance
      .collection("prod_product_parameter")
      .where("scr_id", isEqualTo: scrID)
      .where("par_select", isEqualTo: true)
      .get();

  String listProd = "";
  String cini = '"';
  String cfim = '";';

  listProd =
      '"ID";"Código";"Descrição";"Unidade";"NCM";"Origem";"Preço";"Valor IPI fixo";"Observações";"Situação";"Estoque";"Preço de custo";"Cód no fornecedor";"Fornecedor";"Localização";"Estoque maximo";"Estoque minimo";"Peso líquido (Kg)";"Peso bruto (Kg)";"GTIN/EAN";"GTIN/EAN da embalagem";"Largura do Produto";"Altura do Produto";"Profundidade do produto";"Data Validade";"Descrição do Produto no Fornecedor";"Descrição Complementar";"Unidade por Caixa";"Produto Variação";"Tipo Produção";"Classe de enquadramento do IPI";"Código da lista de serviços";"Tipo do item";"Grupo de Tags/Tags";"Tributos";"Código Pai";"Código Integração";"Grupo de produtos";"Marca";"CEST";"Volumes";"Descrição Curta";"Cross-Docking";"URL Imagens Externas";"Link Externo";"Meses Garantia no Fornecedor";"Clonar dados do pai";"Condição do produto";"Frete Grátis";"Número FCI";"Vídeo";"Departamento";"Unidade de medida";"Preço de compra";"Valor base ICMS ST para retenção";"Valor ICMS ST para retenção";"Valor ICMS próprio do substituto";"Categoria do produto";"Informações Adicionais"' +
          '\n';

  // LOOP PRODUTOS
  for (int ii = 0; ii < query_prod.docs.length; ii++) {
    var products = query_prod.docs[ii];

    //   if (ii == 3) {
    //   break;
    //   }

    formProducts product = new formProducts();

    product.Codigo = products.get("par_code").toString().replaceAll('"', '""');

    product.Descricao =
        products.get("par_description").toString().replaceAll('"', '""');
    product.Cod_no_fornecedor =
        products.get("par_code").toString().replaceAll('"', '""');

    product.Estoque_minimo = "2";

    double _pb = 0.0;
    double _pl = 0.0;

    if (products.get("par_weight1").toString().isNotEmpty)
      _pb = products.get("par_weight1") / 1000;
    if (products.get("par_weight2").toString().isNotEmpty)
      _pl = products.get("par_weight2") / 1000;

    product.Peso_liquido_Kg = _pl.toString().replaceAll(".", ",");
    product.Peso_bruto_Kg = _pb.toString().replaceAll(".", ",");

    product.GTIN_EAN =
        products.get("par_code").toString().replaceAll('"', '""');
    product.GTIN_EAN_da_embalagem =
        products.get("par_code").toString().replaceAll('"', '""');

    product.Largura_do_Produto = products.get("par_largura").toString();
    product.Altura_do_Produto = products.get("par_height").toString();
    product.Profundidade_do_produto = products.get("par_length").toString();

    product.Descricao_do_Produto_no_Fornecedor =
        products.get("par_description").toString().replaceAll('"', '""');

    product.Marca = product.Situacao = products.get("prod_marca").toString();

    product.Categoria_do_produto = products.get("prod_categorias").toString();

    product.Descricao_Curta =
        products.get("par_html").toString().replaceAll('"', '""');
    //  product.Descricao_Complementar = products.get("par_html").toString().replaceAll('"', '""');

    try {
      product.Situacao = products.get("prod_situacao") ? 'Ativo' : 'Inativo';
      product.Frete_Gratis = products.get("prod_fretegratis") ? 'SIM' : 'NÃO';
      product.Unidade = products.get("prod_unidade").toString();
      product.NCM = products.get("prod_ncm").toString();
      product.Origem = products.get("prod_origem").toString();
      product.Estoque = products.get("prod_estoque").toString();
      product.Preco_de_custo = products.get("prod_custo").toString();
      product.Estoque_maximo = products.get("prod_estmaximo").toString();
      product.Estoque_minimo = products.get("prod_estminimo").toString();
      product.CEST = products.get("prod_cest").toString();
      product.Video = products.get("prod_linkvideo").toString();
      product.Preco_de_compra = products.get("prod_custo").toString();
      product.Preco = products.get("par_value").toString();
    } catch (e) {}

    //.collection("prod_product_parameter").doc(products.id)

    QuerySnapshot query_prod_img = await FirebaseFirestore.instance
        .collection("prod_product_parameter")
        .doc(products.reference.id)
        .collection("prod_product_image")
        .where("img_active", isEqualTo: true)
        .get();
    //  .orderBy("prodID",  descending: false)
    //  .orderBy("img_order", descending: true)
    //  .orderBy("img_create", descending: false).get();

    var Separador = "";
    var stringUrl = "";

    List<imagessort> Imagessort = [];

    for (int im = 0; im < query_prod_img.docs.length; im++) {
      var prod_image = query_prod_img.docs[im];

      Imagessort.add(imagessort(
          prod_image.get("img_image").toString(),
          prod_image.get("img_order").toString() +
              prod_image.get("img_create").toString()));
    }

    Imagessort.sort((a, b) => a.img_order.compareTo(b.img_order));

    for (int isor = 0; isor < Imagessort.length; isor++) {
      var retSor = Imagessort[isor];
      stringUrl = stringUrl + (Separador + retSor.img_image.toString());
      Separador = "|";
    }

    product.URL_Imagens_Externas = stringUrl;

    listProd = listProd +
        cini +
        product.ID +
        cfim +
        cini +
        product.Codigo +
        cfim +
        cini +
        product.Descricao +
        cfim +
        cini +
        product.Unidade +
        cfim +
        cini +
        product.NCM +
        cfim +
        cini +
        product.Origem +
        cfim +
        cini +
        product.Preco +
        cfim +
        cini +
        product.Valor_IPI_fixo +
        cfim +
        cini +
        product.Observacoes +
        cfim +
        cini +
        product.Situacao +
        cfim +
        cini +
        product.Estoque +
        cfim +
        cini +
        product.Preco_de_custo +
        cfim +
        cini +
        product.Cod_no_fornecedor +
        cfim +
        cini +
        product.Fornecedor +
        cfim +
        cini +
        product.Localizacao +
        cfim +
        cini +
        product.Estoque_maximo +
        cfim +
        cini +
        product.Estoque_minimo +
        cfim +
        cini +
        product.Peso_liquido_Kg +
        cfim +
        cini +
        product.Peso_bruto_Kg +
        cfim +
        cini +
        product.GTIN_EAN +
        cfim +
        cini +
        product.GTIN_EAN_da_embalagem +
        cfim +
        cini +
        product.Largura_do_Produto +
        cfim +
        cini +
        product.Altura_do_Produto +
        cfim +
        cini +
        product.Profundidade_do_produto +
        cfim +
        cini +
        product.Data_Validade +
        cfim +
        cini +
        product.Descricao_do_Produto_no_Fornecedor +
        cfim +
        cini +
        product.Descricao_Complementar +
        cfim +
        cini +
        product.Unidade_por_Caixa +
        cfim +
        cini +
        product.Produto_Variacao +
        cfim +
        cini +
        product.Tipo_Producao +
        cfim +
        cini +
        product.Classe_de_enquadramento_do_IPI +
        cfim +
        cini +
        product.Codigo_da_lista_de_servicos +
        cfim +
        cini +
        product.Tipo_do_item +
        cfim +
        cini +
        product.Grupo_de_Tags_Tags +
        cfim +
        cini +
        product.Tributos +
        cfim +
        cini +
        product.Codigo_Pai +
        cfim +
        cini +
        product.Codigo_Integracao +
        cfim +
        cini +
        product.Grupo_de_produtos +
        cfim +
        cini +
        product.Marca +
        cfim +
        cini +
        product.CEST +
        cfim +
        cini +
        product.Volumes +
        cfim +
        cini +
        product.Descricao_Curta +
        cfim +
        cini +
        product.Cross_Docking +
        cfim +
        cini +
        product.URL_Imagens_Externas +
        cfim +
        cini +
        product.Link_Externo +
        cfim +
        cini +
        product.Meses_Garantia_no_Fornecedor +
        cfim +
        cini +
        product.Clonar_dados_do_pai +
        cfim +
        cini +
        product.Condicao_do_produto +
        cfim +
        cini +
        product.Frete_Gratis +
        cfim +
        cini +
        product.Numero_FCI +
        cfim +
        cini +
        product.Video +
        cfim +
        cini +
        product.Departamento +
        cfim +
        cini +
        product.Unidade_de_medida +
        cfim +
        cini +
        product.Preco_de_compra +
        cfim +
        cini +
        product.Valor_base_ICMS_ST_para_retencao +
        cfim +
        cini +
        product.Valor_ICMS_ST_para_retencao +
        cfim +
        cini +
        product.Valor_ICMS_proprio_do_substituto +
        cfim +
        cini +
        product.Categoria_do_produto +
        cfim +
        cini +
        product.Informacoes_Adicionais +
        cini +
        "\n";
  }

  return (listProd.toString());
}

class formProducts {
  String ID = "";
  String Codigo = "";
  String Descricao = "";
  String Unidade = "PC";
  String NCM = "";
  String Origem = "0";
  String Preco = "0,00";
  String Valor_IPI_fixo = "0,00";
  String Observacoes = "";
  String Situacao = "Inativo";
  String Estoque = "0,00";
  String Preco_de_custo = "0,00";
  String Cod_no_fornecedor = "";
  String Fornecedor = "";
  String Localizacao = "";
  String Estoque_maximo = "0,00";
  String Estoque_minimo = "0,00";
  String Peso_liquido_Kg = "0,000";
  String Peso_bruto_Kg = "0,000";
  String GTIN_EAN = "";
  String GTIN_EAN_da_embalagem = "";
  String Largura_do_Produto = "0.00";
  String Altura_do_Produto = "0.00";
  String Profundidade_do_produto = "0.00";
  String Data_Validade = "";
  String Descricao_do_Produto_no_Fornecedor = "";
  String Descricao_Complementar = "";
  String Unidade_por_Caixa = "0,00";
  String Produto_Variacao = "";
  String Tipo_Producao = "Terceiros";
  String Classe_de_enquadramento_do_IPI = "";
  String Codigo_da_lista_de_servicos = "";
  String Tipo_do_item = "";
  String Grupo_de_Tags_Tags = "";
  String Tributos = "0,00";
  String Codigo_Pai = "";
  String Codigo_Integracao = "0";
  String Grupo_de_produtos = "";
  String Marca = "";
  String CEST = "";
  String Volumes = "0";
  String Descricao_Curta = "";
  String Cross_Docking = "0";
  String URL_Imagens_Externas = "";
  String Link_Externo = "";
  String Meses_Garantia_no_Fornecedor = "";
  String Clonar_dados_do_pai = "NÃO";
  String Condicao_do_produto = "NOVO";
  String Frete_Gratis = "NÃO";
  String Numero_FCI = "";
  String Video = "";
  String Departamento = "";
  String Unidade_de_medida = "Milímetro";
  String Preco_de_compra = "0,00";
  String Valor_base_ICMS_ST_para_retencao = "0,0000";
  String Valor_ICMS_ST_para_retencao = "0,0000";
  String Valor_ICMS_proprio_do_substituto = "0,0000";
  String Categoria_do_produto = "";
  String Informacoes_Adicionais = "";
}

class imagessort {
  String img_image;
  String img_order;
  imagessort(this.img_image, this.img_order);
  @override
  String toString() {
    return '{ ${this.img_image}, ${this.img_order} }';
  }
}
