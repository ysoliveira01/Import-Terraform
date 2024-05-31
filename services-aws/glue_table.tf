module "dadosreceita" {
  source = "./modules/aws_glue/table"

  table_name             = "dadosreceita"
  database_name          = "db_raw_antifraude_db"
  description            = "db_raw_antifraude_db.dadosreceita"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_antifraude_db/dadosreceita/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "int"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "razaosocial"
      type    = "string"
      comment = "Nome da coluna na origem: razaosocial;"
    },
    {
      name    = "nome"
      type    = "string"
      comment = "Nome da coluna na origem: nome;"
    },
    {
      name    = "cpfcnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cpfcnpj;"
    },
    {
      name    = "rgie"
      type    = "string"
      comment = "Nome da coluna na origem: rgie;"
    },
    {
      name    = "datanascimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datanascimento;"
    },
    {
      name    = "nomemae"
      type    = "string"
      comment = "Nome da coluna na origem: nomemae;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "string"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "complemento"
      type    = "string"
      comment = "Nome da coluna na origem: complemento;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "cidade"
      type    = "string"
      comment = "Nome da coluna na origem: cidade;"
    },
    {
      name    = "estado"
      type    = "string"
      comment = "Nome da coluna na origem: estado;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "codigoibge"
      type    = "string"
      comment = "Nome da coluna na origem: codigoibge;"
    },
    {
      name    = "telefone"
      type    = "string"
      comment = "Nome da coluna na origem: telefone;"
    },
    {
      name    = "email"
      type    = "string"
      comment = "Nome da coluna na origem: email;"
    },
    {
      name    = "cnaeprincipal"
      type    = "string"
      comment = "Nome da coluna na origem: cnaeprincipal;"
    },
    {
      name    = "precadastroid"
      type    = "int"
      comment = "Nome da coluna na origem: precadastroid;"
    },
    {
      name    = "datacadastro"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datacadastro;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "vinculo"
      type    = "string"
      comment = "Nome da coluna na origem: vinculo;"
    },
    {
      name    = "ppe"
      type    = "boolean"
      comment = "Nome da coluna na origem: ppe;"
    },
    {
      name    = "cnpjstatus"
      type    = "string"
      comment = "Nome da coluna na origem: cnpjstatus;"
    },
    {
      name    = "cpfstatus"
      type    = "string"
      comment = "Nome da coluna na origem: cpfstatus;"
    },
    {
      name    = "indicacaoobito"
      type    = "boolean"
      comment = "Nome da coluna na origem: indicacaoobito;"
    },
    {
      name    = "cnaedescricao"
      type    = "string"
      comment = "Nome da coluna na origem: cnaedescricao;"
    },
    {
      name    = "cnaeid"
      type    = "int"
      comment = "Nome da coluna na origem: cnaeid;"
    },
    {
      name    = "regime"
      type    = "string"
      comment = "Nome da coluna na origem: regime;"
    },
    {
      name    = "originalnomeofac"
      type    = "string"
      comment = "Nome da coluna na origem: originalnomeofac;"
    },
    {
      name    = "porcentagemofac"
      type    = "decimal(18,5)"
      comment = "Nome da coluna na origem: porcentagemofac;"
    },
    {
      name    = "codigoregime"
      type    = "string"
      comment = "Nome da coluna na origem: codigoregime;"
    }
  ]
}

module "precadastro" {
  source = "./modules/aws_glue/table"

  table_name             = "precadastro"
  database_name          = "db_raw_antifraude_db"
  description            = "db_raw_antifraude_db.precadastro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_antifraude_db/precadastro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "int"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cnpj;"
    },
    {
      name    = "ie"
      type    = "string"
      comment = "Nome da coluna na origem: ie;"
    },
    {
      name    = "razaosocial"
      type    = "string"
      comment = "Nome da coluna na origem: razaosocial;"
    },
    {
      name    = "cnaeprincipal"
      type    = "string"
      comment = "Nome da coluna na origem: cnaeprincipal;"
    },
    {
      name    = "nomesolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: nomesolicitante;"
    },
    {
      name    = "cpfsolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: cpfsolicitante;"
    },
    {
      name    = "rgsolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: rgsolicitante;"
    },
    {
      name    = "fotosolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: fotosolicitante;"
    },
    {
      name    = "fotodocumentosolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: fotodocumentosolicitante;"
    },
    {
      name    = "tipodocumento"
      type    = "string"
      comment = "Nome da coluna na origem: tipodocumento;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "string"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "complemento"
      type    = "string"
      comment = "Nome da coluna na origem: complemento;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "cidade"
      type    = "string"
      comment = "Nome da coluna na origem: cidade;"
    },
    {
      name    = "estado"
      type    = "string"
      comment = "Nome da coluna na origem: estado;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "gpslat"
      type    = "string"
      comment = "Nome da coluna na origem: gpslat;"
    },
    {
      name    = "gpslng"
      type    = "string"
      comment = "Nome da coluna na origem: gpslng;"
    },
    {
      name    = "fotofachada"
      type    = "string"
      comment = "Nome da coluna na origem: fotofachada;"
    },
    {
      name    = "origemcadastro"
      type    = "string"
      comment = "Nome da coluna na origem: origemcadastro;"
    },
    {
      name    = "datacadastro"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datacadastro;"
    },
    {
      name    = "status"
      type    = "int"
      comment = "Nome da coluna na origem: status;"
    },
    {
      name    = "statuscomplemento"
      type    = "string"
      comment = "Nome da coluna na origem: statuscomplemento;"
    },
    {
      name    = "statusmanual"
      type    = "string"
      comment = "Nome da coluna na origem: statusmanual;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "etapa"
      type    = "int"
      comment = "Nome da coluna na origem: etapa;"
    },
    {
      name    = "chaveconsulta"
      type    = "string"
      comment = "Nome da coluna na origem: chaveconsulta;"
    },
    {
      name    = "parceiroid"
      type    = "int"
      comment = "Nome da coluna na origem: parceiroid;"
    },
    {
      name    = "usuarioid"
      type    = "int"
      comment = "Nome da coluna na origem: usuarioid;"
    },
    {
      name    = "operacaocaixa"
      type    = "string"
      comment = "Nome da coluna na origem: operacaocaixa;"
    },
    {
      name    = "banco"
      type    = "int"
      comment = "Nome da coluna na origem: banco;"
    },
    {
      name    = "agencia"
      type    = "string"
      comment = "Nome da coluna na origem: agencia;"
    },
    {
      name    = "agenciadv"
      type    = "string"
      comment = "Nome da coluna na origem: agenciadv;"
    },
    {
      name    = "conta"
      type    = "string"
      comment = "Nome da coluna na origem: conta;"
    },
    {
      name    = "contribuinte"
      type    = "boolean"
      comment = "Nome da coluna na origem: contribuinte;"
    },
    {
      name    = "contapoupanca"
      type    = "boolean"
      comment = "Nome da coluna na origem: contapoupanca;"
    },
    {
      name    = "numdiasantecipacao"
      type    = "int"
      comment = "Nome da coluna na origem: numdiasantecipacao;"
    },
    {
      name    = "taxaantecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxaantecipacao;"
    },
    {
      name    = "taxadebito"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxadebito;"
    },
    {
      name    = "taxacredito"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxacredito;"
    },
    {
      name    = "taxacredito2a6"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxacredito2a6;"
    },
    {
      name    = "taxacredito7a12"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxacredito7a12;"
    },
    {
      name    = "ecommerce"
      type    = "boolean"
      comment = "Nome da coluna na origem: ecommerce;"
    },
    {
      name    = "tipocobranca"
      type    = "string"
      comment = "Nome da coluna na origem: tipocobranca;"
    },
    {
      name    = "datastatus"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datastatus;"
    },
    {
      name    = "clienteid"
      type    = "int"
      comment = "Nome da coluna na origem: clienteid;"
    },
    {
      name    = "nomefantasia"
      type    = "string"
      comment = "Nome da coluna na origem: nomefantasia;"
    },
    {
      name    = "datanascimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datanascimento;"
    },
    {
      name    = "nomemae"
      type    = "string"
      comment = "Nome da coluna na origem: nomemae;"
    },
    {
      name    = "codigoibge"
      type    = "string"
      comment = "Nome da coluna na origem: codigoibge;"
    },
    {
      name    = "cnaedescricao"
      type    = "string"
      comment = "Nome da coluna na origem: cnaedescricao;"
    },
    {
      name    = "idramoatividadepf"
      type    = "int"
      comment = "Nome da coluna na origem: idramoatividadepf;"
    },
    {
      name    = "usuariotratativaid"
      type    = "bigint"
      comment = "Nome da coluna na origem: usuariotratativaid;"
    },
    {
      name    = "dataabertura"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataabertura;"
    }
  ]
}

module "paymentauthorizantions" {
  source = "./modules/aws_glue/table"

  table_name             = "paymentauthorizantions"
  database_name          = "db_raw_ec_gateway"
  description            = "db_raw_ec_gateway.paymentauthorizantions"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_ec_gateway/paymentauthorizantions/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "paymentauthorizationid"
      type    = "bigint"
      comment = "Nome da coluna na origem: paymentauthorizationid;"
    },
    {
      name    = "paymentid"
      type    = "string"
      comment = "Nome da coluna na origem: paymentid;"
    },
    {
      name    = "merchantorderid"
      type    = "string"
      comment = "Nome da coluna na origem: merchantorderid;"
    },
    {
      name    = "amount"
      type    = "decimal(15,2)"
      comment = "Nome da coluna na origem: amount;"
    },
    {
      name    = "installments"
      type    = "int"
      comment = "Nome da coluna na origem: installments;"
    },
    {
      name    = "settle"
      type    = "boolean"
      comment = "Nome da coluna na origem: settle;"
    },
    {
      name    = "authenticate"
      type    = "boolean"
      comment = "Nome da coluna na origem: authenticate;"
    },
    {
      name    = "termurl"
      type    = "string"
      comment = "Nome da coluna na origem: termurl;"
    },
    {
      name    = "paymentmethodtoken"
      type    = "string"
      comment = "Nome da coluna na origem: paymentmethodtoken;"
    },
    {
      name    = "cardtype"
      type    = "string"
      comment = "Nome da coluna na origem: cardtype;"
    },
    {
      name    = "cardbrand"
      type    = "string"
      comment = "Nome da coluna na origem: cardbrand;"
    },
    {
      name    = "cardnumber"
      type    = "string"
      comment = "Nome da coluna na origem: cardnumber;"
    },
    {
      name    = "holdername"
      type    = "string"
      comment = "Nome da coluna na origem: holdername;"
    },
    {
      name    = "holderdocument"
      type    = "string"
      comment = "Nome da coluna na origem: holderdocument;"
    },
    {
      name    = "transactionid"
      type    = "string"
      comment = "Nome da coluna na origem: transactionid;"
    },
    {
      name    = "authorizationcode"
      type    = "string"
      comment = "Nome da coluna na origem: authorizationcode;"
    },
    {
      name    = "proofofsale"
      type    = "string"
      comment = "Nome da coluna na origem: proofofsale;"
    },
    {
      name    = "returncode"
      type    = "string"
      comment = "Nome da coluna na origem: returncode;"
    },
    {
      name    = "returnmessage"
      type    = "string"
      comment = "Nome da coluna na origem: returnmessage;"
    },
    {
      name    = "paymentstatus"
      type    = "int"
      comment = "Nome da coluna na origem: paymentstatus;"
    },
    {
      name    = "merchantid"
      type    = "bigint"
      comment = "Nome da coluna na origem: merchantid;"
    },
    {
      name    = "created"
      type    = "timestamp"
      comment = "Nome da coluna na origem: created;"
    },
    {
      name    = "lastupdated"
      type    = "timestamp"
      comment = "Nome da coluna na origem: lastupdated;"
    },
    {
      name    = "active"
      type    = "boolean"
      comment = "Nome da coluna na origem: active;"
    },
    {
      name    = "providername"
      type    = "string"
      comment = "Nome da coluna na origem: providername;"
    },
    {
      name    = "providerpaymentid"
      type    = "string"
      comment = "Nome da coluna na origem: providerpaymentid;"
    },
    {
      name    = "cardbrandcode"
      type    = "string"
      comment = "Nome da coluna na origem: cardbrandcode;"
    },
    {
      name    = "softdescriptor"
      type    = "string"
      comment = "Nome da coluna na origem: softdescriptor;"
    },
    {
      name    = "validationcode"
      type    = "string"
      comment = "Nome da coluna na origem: validationcode;"
    },
    {
      name    = "marketplaceid"
      type    = "bigint"
      comment = "Nome da coluna na origem: marketplaceid;"
    }
  ]
}

module "bin" {
  source = "./modules/aws_glue/table"

  table_name             = "bin"
  database_name          = "db_raw_granito_base_2"
  description            = "db_raw_granito_base_2.bin"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_granito_base_2/bin/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "bin"
      type    = "string"
      comment = "Nome da coluna na origem: bin;"
    },
    {
      name    = "fk_emissor"
      type    = "int"
      comment = "Nome da coluna na origem: fk_emissor;"
    },
    {
      name    = "fk_plastico"
      type    = "int"
      comment = "Nome da coluna na origem: fk_plastico;"
    },
    {
      name    = "fk_abrangencia"
      type    = "int"
      comment = "Nome da coluna na origem: fk_abrangencia;"
    },
    {
      name    = "datainclusao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datainclusao;"
    },
    {
      name    = "plataformacredito"
      type    = "string"
      comment = "Nome da coluna na origem: plataformacredito;"
    },
    {
      name    = "plataformadebio"
      type    = "string"
      comment = "Nome da coluna na origem: plataformadebio;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "tipocaptura"
      type    = "string"
      comment = "Nome da coluna na origem: tipocaptura;"
    },
    {
      name    = "tipoproduto"
      type    = "string"
      comment = "Nome da coluna na origem: tipoproduto;"
    },
    {
      name    = "rangeinicial"
      type    = "string"
      comment = "Nome da coluna na origem: rangeinicial;"
    },
    {
      name    = "rangefinal"
      type    = "string"
      comment = "Nome da coluna na origem: rangefinal;"
    },
    {
      name    = "liquidacaoantecipada"
      type    = "boolean"
      comment = "Nome da coluna na origem: liquidacaoantecipada;"
    }
  ]
}

module "empresamcc" {
  source = "./modules/aws_glue/table"

  table_name             = "empresamcc"
  database_name          = "db_raw_granito_base_2"
  description            = "db_raw_granito_base_2.empresamcc"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_granito_base_2/empresamcc/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "empresa"
      type    = "bigint"
      comment = "Nome da coluna na origem: empresa;"
    },
    {
      name    = "fk_mcc"
      type    = "int"
      comment = "Nome da coluna na origem: fk_mcc;"
    },
    {
      name    = "fk_classificacao"
      type    = "int"
      comment = "Nome da coluna na origem: fk_classificacao;"
    },
    {
      name    = "cnae"
      type    = "string"
      comment = "Nome da coluna na origem: cnae;"
    },
    {
      name    = "descricao"
      type    = "string"
      comment = "Nome da coluna na origem: descricao;"
    },
    {
      name    = "cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cnpj;"
    },
    {
      name    = "razao"
      type    = "string"
      comment = "Nome da coluna na origem: razao;"
    },
    {
      name    = "fantasia"
      type    = "string"
      comment = "Nome da coluna na origem: fantasia;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "string"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "cidade"
      type    = "string"
      comment = "Nome da coluna na origem: cidade;"
    },
    {
      name    = "estado"
      type    = "string"
      comment = "Nome da coluna na origem: estado;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "diasliquidacaodebito"
      type    = "int"
      comment = "Nome da coluna na origem: diasliquidacaodebito;"
    },
    {
      name    = "diasliquidacaocredito"
      type    = "int"
      comment = "Nome da coluna na origem: diasliquidacaocredito;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "liquidacao"
      type    = "string"
      comment = "Nome da coluna na origem: liquidacao;"
    },
    {
      name    = "ispbdomiciliobancario"
      type    = "string"
      comment = "Nome da coluna na origem: ispbdomiciliobancario;"
    },
    {
      name    = "tipocontabancaria"
      type    = "string"
      comment = "Nome da coluna na origem: tipocontabancaria;"
    },
    {
      name    = "agenciabancaria"
      type    = "string"
      comment = "Nome da coluna na origem: agenciabancaria;"
    },
    {
      name    = "contabancaria"
      type    = "string"
      comment = "Nome da coluna na origem: contabancaria;"
    },
    {
      name    = "domiciliobancariotravado"
      type    = "boolean"
      comment = "Nome da coluna na origem: domiciliobancariotravado;"
    },
    {
      name    = "hashcomparacao"
      type    = "string"
      comment = "Nome da coluna na origem: hashcomparacao;"
    },
    {
      name    = "telefone"
      type    = "string"
      comment = "Nome da coluna na origem: telefone;"
    },
    {
      name    = "contato"
      type    = "string"
      comment = "Nome da coluna na origem: contato;"
    },
    {
      name    = "codigoibge"
      type    = "string"
      comment = "Nome da coluna na origem: codigoibge;"
    }
  ]
}

module "eventosoutgoing" {
  source = "./modules/aws_glue/table"

  table_name             = "eventosoutgoing"
  database_name          = "db_raw_granito_base_2"
  description            = "db_raw_granito_base_2.eventosoutgoing"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_granito_base_2/eventosoutgoing/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "fk_controleoutgoing"
      type    = "int"
      comment = "Nome da coluna na origem: fk_controleoutgoing;"
    },
    {
      name    = "numeroremessa"
      type    = "int"
      comment = "Nome da coluna na origem: numeroremessa;"
    },
    {
      name    = "numerojanela"
      type    = "int"
      comment = "Nome da coluna na origem: numerojanela;"
    },
    {
      name    = "datahora"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datahora;"
    },
    {
      name    = "nomearquivo"
      type    = "string"
      comment = "Nome da coluna na origem: nomearquivo;"
    },
    {
      name    = "origemarquivo"
      type    = "int"
      comment = "Nome da coluna na origem: origemarquivo;"
    },
    {
      name    = "fk_idjanela"
      type    = "bigint"
      comment = "Nome da coluna na origem: fk_idjanela;"
    }
  ]
}

module "janelaoutgoing" {
  source = "./modules/aws_glue/table"

  table_name             = "janelaoutgoing"
  database_name          = "db_raw_granito_base_2"
  description            = "db_raw_granito_base_2.janelaoutgoing"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_granito_base_2/janelaoutgoing/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "idjanela"
      type    = "bigint"
      comment = "Nome da coluna na origem: idjanela;"
    },
    {
      name    = "dataenvio"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataenvio;"
    },
    {
      name    = "idremessa"
      type    = "int"
      comment = "Nome da coluna na origem: idremessa;"
    },
    {
      name    = "janela"
      type    = "int"
      comment = "Nome da coluna na origem: janela;"
    },
    {
      name    = "regb0"
      type    = "string"
      comment = "Nome da coluna na origem: regb0;"
    },
    {
      name    = "regbz"
      type    = "string"
      comment = "Nome da coluna na origem: regbz;"
    },
    {
      name    = "plataforma"
      type    = "string"
      comment = "Nome da coluna na origem: plataforma;"
    },
    {
      name    = "fileid"
      type    = "string"
      comment = "Nome da coluna na origem: fileid;"
    },
    {
      name    = "bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: bandeira;"
    },
    {
      name    = "datajanela"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datajanela;"
    },
    {
      name    = "quantidadetotaltransacao"
      type    = "int"
      comment = "Nome da coluna na origem: quantidadetotaltransacao;"
    },
    {
      name    = "valortotaltransacao"
      type    = "decimal(17,2)"
      comment = "Nome da coluna na origem: valortotaltransacao;"
    }
  ]
}

module "mcc" {
  source = "./modules/aws_glue/table"

  table_name             = "mcc"
  database_name          = "db_raw_granito_base_2"
  description            = "db_raw_granito_base_2.mcc"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_granito_base_2/mcc/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "mcc"
      type    = "int"
      comment = "Nome da coluna na origem: mcc;"
    },
    {
      name    = "descricao"
      type    = "string"
      comment = "Nome da coluna na origem: descricao;"
    },
    {
      name    = "valor_alto"
      type    = "boolean"
      comment = "Nome da coluna na origem: valor_alto;"
    },
  ]
}

module "transacaostatus" {
  source = "./modules/aws_glue/table"

  table_name             = "transacaostatus"
  database_name          = "db_raw_granito_base_2"
  description            = "db_raw_granito_base_2.transacaostatus"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_granito_base_2/transacaostatus/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "idtransacao"
      type    = "bigint"
      comment = "Nome da coluna na origem: idtransacao;"
    },
    {
      name    = "referencenumber"
      type    = "string"
      comment = "Nome da coluna na origem: referencenumber;"
    },
    {
      name    = "numeroparcelas"
      type    = "string"
      comment = "Nome da coluna na origem: numeroparcelas;"
    },
    {
      name    = "situacao"
      type    = "int"
      comment = "Nome da coluna na origem: situacao;"
    },
    {
      name    = "situacaoemissor"
      type    = "int"
      comment = "Nome da coluna na origem: situacaoemissor;"
    },
    {
      name    = "bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: bandeira;"
    },
    {
      name    = "mti"
      type    = "string"
      comment = "Nome da coluna na origem: mti;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "tipotransacao"
      type    = "string"
      comment = "Nome da coluna na origem: tipotransacao;"
    },
    {
      name    = "modalidadeparcelamento"
      type    = "string"
      comment = "Nome da coluna na origem: modalidadeparcelamento;"
    },
    {
      name    = "numerototalparcela"
      type    = "string"
      comment = "Nome da coluna na origem: numerototalparcela;"
    },
    {
      name    = "dataliquidacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataliquidacao;"
    },
    {
      name    = "datainclusao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datainclusao;"
    },
    {
      name    = "trn_vinculada"
      type    = "bigint"
      comment = "Nome da coluna na origem: trn_vinculada;"
    },
    {
      name    = "dataliquidacaooriginal"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataliquidacaooriginal;"
    },
    {
      name    = "fk_emissor"
      type    = "int"
      comment = "Nome da coluna na origem: fk_emissor;"
    },
    {
      name    = "empresa"
      type    = "bigint"
      comment = "Nome da coluna na origem: empresa;"
    },
    {
      name    = "autorizacao"
      type    = "string"
      comment = "Nome da coluna na origem: autorizacao;"
    },
    {
      name    = "nsu_host"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_host;"
    },
    {
      name    = "pan_visivel"
      type    = "string"
      comment = "Nome da coluna na origem: pan_visivel;"
    },
    {
      name    = "valororiginal"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valororiginal;"
    },
    {
      name    = "valortotal"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valortotal;"
    },
    {
      name    = "cancelada"
      type    = "boolean"
      comment = "Nome da coluna na origem: cancelada;"
    },
    {
      name    = "valorintercambio"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valorintercambio;"
    },
    {
      name    = "aliquotaintercambio"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: aliquotaintercambio;"
    },
    {
      name    = "datavencimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datavencimento;"
    },
    {
      name    = "forma_captura"
      type    = "string"
      comment = "Nome da coluna na origem: forma_captura;"
    },
    {
      name    = "fallback"
      type    = "string"
      comment = "Nome da coluna na origem: fallback;"
    },
    {
      name    = "custo"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: custo;"
    },
    {
      name    = "valorintercambiogr"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valorintercambiogr;"
    },
    {
      name    = "aliquotaintercambiogr"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: aliquotaintercambiogr;"
    },
    {
      name    = "aid_cartao"
      type    = "string"
      comment = "Nome da coluna na origem: aid_cartao;"
    },
    {
      name    = "pan_cripto"
      type    = "string"
      comment = "Nome da coluna na origem: pan_cripto;"
    },
    {
      name    = "nsu_rede"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_rede;"
    }
  ]
}

module "transacaotaxa" {
  source = "./modules/aws_glue/table"

  table_name             = "transacaotaxa"
  database_name          = "db_raw_granito_base_2"
  description            = "db_raw_granito_base_2.transacaotaxa"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_granito_base_2/transacaotaxa/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "fk_idtransacaostatus"
      type    = "bigint"
      comment = "Nome da coluna na origem: fk_idtransacaostatus;"
    },
    {
      name    = "datainclusao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datainclusao;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "fk_mcc"
      type    = "int"
      comment = "Nome da coluna na origem: fk_mcc;"
    },
    {
      name    = "grupopadrao"
      type    = "int"
      comment = "Nome da coluna na origem: grupopadrao;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "codigotaxa"
      type    = "string"
      comment = "Nome da coluna na origem: codigotaxa;"
    },
    {
      name    = "descricaotaxa"
      type    = "string"
      comment = "Nome da coluna na origem: descricaotaxa;"
    },
    {
      name    = "taxaproduto"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxaproduto;"
    },
    {
      name    = "tetoproduto"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: tetoproduto;"
    },
    {
      name    = "tarifaproduto"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: tarifaproduto;"
    },
    {
      name    = "tarifaadicional"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: tarifaadicional;"
    },
    {
      name    = "custo"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: custo;"
    },
    {
      name    = "dataprocessamento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataprocessamento;"
    },
    {
      name    = "processorid"
      type    = "int"
      comment = "Nome da coluna na origem: processorid;"
    },
    {
      name    = "fk_idjanela"
      type    = "bigint"
      comment = "Nome da coluna na origem: fk_idjanela;"
    },
    {
      name    = "datavencimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datavencimento;"
    },
    {
      name    = "fileid"
      type    = "string"
      comment = "Nome da coluna na origem: fileid;"
    },
    {
      name    = "direcao"
      type    = "string"
      comment = "Nome da coluna na origem: direcao;"
    },
    {
      name    = "acaofinanceira"
      type    = "string"
      comment = "Nome da coluna na origem: acaofinanceira;"
    },
    {
      name    = "cardprogramidentifier"
      type    = "string"
      comment = "Nome da coluna na origem: cardprogramidentifier;"
    },
    {
      name    = "businessservicearrangementtype"
      type    = "string"
      comment = "Nome da coluna na origem: businessservicearrangementtype;"
    },
    {
      name    = "businessserviceidcode"
      type    = "string"
      comment = "Nome da coluna na origem: businessserviceidcode;"
    },
    {
      name    = "serviceidcode"
      type    = "string"
      comment = "Nome da coluna na origem: serviceidcode;"
    }
  ]
}

module "contract" {
  source = "./modules/aws_glue/table"

  table_name             = "contract"
  database_name          = "db_raw_granito_club"
  description            = "db_raw_granito_club.contract"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_granito_club/contract/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "merchantid"
      type    = "bigint"
      comment = "Nome da coluna na origem: merchantid;"
    },
    {
      name    = "contractdate"
      type    = "timestamp"
      comment = "Nome da coluna na origem: contractdate;"
    },
    {
      name    = "duedate"
      type    = "timestamp"
      comment = "Nome da coluna na origem: duedate;"
    },
    {
      name    = "pricetableid"
      type    = "int"
      comment = "Nome da coluna na origem: pricetableid;"
    },
    {
      name    = "activatedate"
      type    = "timestamp"
      comment = "Nome da coluna na origem: activatedate;"
    },
    {
      name    = "cancellationdate"
      type    = "timestamp"
      comment = "Nome da coluna na origem: cancellationdate;"
    },
    {
      name    = "creatat"
      type    = "timestamp"
      comment = "Nome da coluna na origem: creatat;"
    },
    {
      name    = "updateat"
      type    = "timestamp"
      comment = "Nome da coluna na origem: updateat;"
    }
  ]
}

module "transacao" {
  source = "./modules/aws_glue/table"

  table_name             = "transacao"
  database_name          = "db_raw_pago_ecommerce"
  description            = "db_raw_pago_ecommerce.transacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_ecommerce/transacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "idcliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: idcliente;"
    },
    {
      name    = "nometitular"
      type    = "string"
      comment = "Nome da coluna na origem: nometitular;"
    },
    {
      name    = "cartao"
      type    = "string"
      comment = "Nome da coluna na origem: cartao;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "numparcelas"
      type    = "int"
      comment = "Nome da coluna na origem: numparcelas;"
    },
    {
      name    = "idtransacaoadquirente"
      type    = "string"
      comment = "Nome da coluna na origem: idtransacaoadquirente;"
    },
    {
      name    = "nsu"
      type    = "string"
      comment = "Nome da coluna na origem: nsu;"
    },
    {
      name    = "status"
      type    = "string"
      comment = "Nome da coluna na origem: status;"
    },
    {
      name    = "dsresponse"
      type    = "string"
      comment = "Nome da coluna na origem: dsresponse;"
    },
    {
      name    = "codautorizacao"
      type    = "string"
      comment = "Nome da coluna na origem: codautorizacao;"
    },
    {
      name    = "dscardcountry"
      type    = "int"
      comment = "Nome da coluna na origem: dscardcountry;"
    },
    {
      name    = "dthrtransacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dthrtransacao;"
    },
    {
      name    = "email"
      type    = "string"
      comment = "Nome da coluna na origem: email;"
    },
    {
      name    = "datanascimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datanascimento;"
    },
    {
      name    = "cpfcnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cpfcnpj;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "int"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "complemento"
      type    = "string"
      comment = "Nome da coluna na origem: complemento;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "cidade"
      type    = "string"
      comment = "Nome da coluna na origem: cidade;"
    },
    {
      name    = "uf"
      type    = "string"
      comment = "Nome da coluna na origem: uf;"
    },
    {
      name    = "aprovadoantifraude"
      type    = "boolean"
      comment = "Nome da coluna na origem: aprovadoantifraude;"
    },
    {
      name    = "cancelado"
      type    = "boolean"
      comment = "Nome da coluna na origem: cancelado;"
    },
    {
      name    = "datacancelamento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datacancelamento;"
    },
    {
      name    = "nsucancelamento"
      type    = "string"
      comment = "Nome da coluna na origem: nsucancelamento;"
    },
    {
      name    = "statuscancelamento"
      type    = "string"
      comment = "Nome da coluna na origem: statuscancelamento;"
    },
    {
      name    = "dsresponsecancelamento"
      type    = "string"
      comment = "Nome da coluna na origem: dsresponsecancelamento;"
    },
    {
      name    = "paymentid"
      type    = "string"
      comment = "Nome da coluna na origem: paymentid;"
    }
  ]
}

module "tb_agenda_financeira" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_agenda_financeira"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_agenda_financeira"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_agenda_financeira/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_agenda_financeira"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_agenda_financeira;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "data"
      type    = "date"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "data_envio_banco"
      type    = "date"
      comment = "Nome da coluna na origem: data_envio_banco;"
    },
    {
      name    = "id_transacao"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_transacao;"
    },
    {
      name    = "data_transacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_transacao;"
    },
    {
      name    = "tipo_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: tipo_transacao;"
    },
    {
      name    = "qtde_parcelas"
      type    = "int"
      comment = "Nome da coluna na origem: qtde_parcelas;"
    },
    {
      name    = "num_parcela"
      type    = "int"
      comment = "Nome da coluna na origem: num_parcela;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "valor_pago"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_pago;"
    },
    {
      name    = "taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa;"
    },
    {
      name    = "taxa_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa_antecipacao;"
    },
    {
      name    = "id_transacao_vinculada"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_transacao_vinculada;"
    },
    {
      name    = "id_bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira;"
    },
    {
      name    = "tipo_transacao_original"
      type    = "int"
      comment = "Nome da coluna na origem: tipo_transacao_original;"
    },
    {
      name    = "taxa_base_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa_base_antecipacao;"
    },
    {
      name    = "id_processo_pagamento_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_processo_pagamento_cliente;"
    },
    {
      name    = "processado"
      type    = "boolean"
      comment = "Nome da coluna na origem: processado;"
    },
    {
      name    = "valor_taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_taxa;"
    },
    {
      name    = "valor_taxa_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_taxa_antecipacao;"
    },
    {
      name    = "valor_total"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total;"
    },
    {
      name    = "valor_total_pago"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total_pago;"
    },
    {
      name    = "id_adquirente"
      type    = "int"
      comment = "Nome da coluna na origem: id_adquirente;"
    },
    {
      name    = "pdv"
      type    = "string"
      comment = "Nome da coluna na origem: pdv;"
    },
    {
      name    = "lucro_taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: lucro_taxa;"
    },
    {
      name    = "valor_total_taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total_taxa;"
    },
    {
      name    = "valor_total_taxa_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total_taxa_antecipacao;"
    },
    {
      name    = "origem_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: origem_transacao;"
    },
    {
      name    = "chip_senha"
      type    = "boolean"
      comment = "Nome da coluna na origem: chip_senha;"
    },
    {
      name    = "id_status_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_transacao;"
    },
    {
      name    = "data_lancamento_original"
      type    = "date"
      comment = "Nome da coluna na origem: data_lancamento_original;"
    },
    {
      name    = "iof"
      type    = "decimal(10,2)"
      comment = "Nome da coluna na origem: iof;"
    },
    {
      name    = "cod_simulacao_antecipacao"
      type    = "bigint"
      comment = "Nome da coluna na origem: cod_simulacao_antecipacao;"
    },
    {
      name    = "id_cliente_original"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente_original;"
    },
    {
      name    = "data_insercao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_insercao;"
    },
    {
      name    = "valor_taxa_adm_parceiro"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_taxa_adm_parceiro;"
    },
    {
      name    = "valor_imposto"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_imposto;"
    },
    {
      name    = "valor_margem_parceiro"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_margem_parceiro;"
    },
    {
      name    = "valor_trava_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_trava_antecipacao;"
    },
    {
      name    = "valor_intercambio"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_intercambio;"
    }
  ]
}

module "tb_banco" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_banco"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_banco"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_banco/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_banco"
      type    = "int"
      comment = "Nome da coluna na origem: id_banco;"
    },
    {
      name    = "desc_banco"
      type    = "string"
      comment = "Nome da coluna na origem: desc_banco;"
    },
    {
      name    = "cod_banco"
      type    = "string"
      comment = "Nome da coluna na origem: cod_banco;"
    },
    {
      name    = "ativo"
      type    = "int"
      comment = "Nome da coluna na origem: ativo;"
    },
    {
      name    = "dias_atraso_pagto"
      type    = "int"
      comment = "Nome da coluna na origem: dias_atraso_pagto;"
    },
    {
      name    = "ispb"
      type    = "string"
      comment = "Nome da coluna na origem: ispb;"
    },
  ]
}

module "tb_bandeira" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_bandeira"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_bandeira"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_bandeira/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira;"
    },
    {
      name    = "desc_bandeira"
      type    = "string"
      comment = "Nome da coluna na origem: desc_bandeira;"
    },
    {
      name    = "id_bandeira_servidor"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira_servidor;"
    },
    {
      name    = "id_modalidade"
      type    = "int"
      comment = "Nome da coluna na origem: id_modalidade;"
    },
    {
      name    = "ativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: ativo;"
    },
    {
      name    = "img"
      type    = "string"
      comment = "Nome da coluna na origem: img;"
    },
    {
      name    = "grupo_bandeira"
      type    = "string"
      comment = "Nome da coluna na origem: grupo_bandeira;"
    },
    {
      name    = "cod_instidr_arrj_pagto"
      type    = "string"
      comment = "Nome da coluna na origem: cod_instidr_arrj_pagto;"
    },
    {
      name    = "cod_cerc"
      type    = "string"
      comment = "Nome da coluna na origem: cod_cerc;"
    }
  ]
}

module "tb_cidade" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cidade"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_cidade"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_cidade/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cidade"
      type    = "int"
      comment = "Nome da coluna na origem: id_cidade;"
    },
    {
      name    = "desc_cidade"
      type    = "string"
      comment = "Nome da coluna na origem: desc_cidade;"
    },
    {
      name    = "id_estado"
      type    = "int"
      comment = "Nome da coluna na origem: id_estado;"
    },
    {
      name    = "zona_franca"
      type    = "boolean"
      comment = "Nome da coluna na origem: zona_franca;"
    }
  ]
}

module "tb_cliente" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cliente"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_cliente"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_cliente/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "cpf_cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cpf_cnpj;"
    },
    {
      name    = "razao"
      type    = "string"
      comment = "Nome da coluna na origem: razao;"
    },
    {
      name    = "fantasia"
      type    = "string"
      comment = "Nome da coluna na origem: fantasia;"
    },
    {
      name    = "id_cnae"
      type    = "int"
      comment = "Nome da coluna na origem: id_cnae;"
    },
    {
      name    = "id_projeto"
      type    = "int"
      comment = "Nome da coluna na origem: id_projeto;"
    },
    {
      name    = "id_plano"
      type    = "int"
      comment = "Nome da coluna na origem: id_plano;"
    },
    {
      name    = "qtd_equipamento"
      type    = "int"
      comment = "Nome da coluna na origem: qtd_equipamento;"
    },
    {
      name    = "id_banco"
      type    = "int"
      comment = "Nome da coluna na origem: id_banco;"
    },
    {
      name    = "agencia"
      type    = "string"
      comment = "Nome da coluna na origem: agencia;"
    },
    {
      name    = "conta"
      type    = "string"
      comment = "Nome da coluna na origem: conta;"
    },
    {
      name    = "id_status"
      type    = "int"
      comment = "Nome da coluna na origem: id_status;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "id_grupo"
      type    = "int"
      comment = "Nome da coluna na origem: id_grupo;"
    },
    {
      name    = "inscricao_estadual"
      type    = "string"
      comment = "Nome da coluna na origem: inscricao_estadual;"
    },
    {
      name    = "senha_config"
      type    = "string"
      comment = "Nome da coluna na origem: senha_config;"
    },
    {
      name    = "antecipacao"
      type    = "boolean"
      comment = "Nome da coluna na origem: antecipacao;"
    },
    {
      name    = "agencia_dv"
      type    = "string"
      comment = "Nome da coluna na origem: agencia_dv;"
    },
    {
      name    = "id_operacao_caixa"
      type    = "int"
      comment = "Nome da coluna na origem: id_operacao_caixa;"
    },
    {
      name    = "id_ramo_atividade_pf"
      type    = "int"
      comment = "Nome da coluna na origem: id_ramo_atividade_pf;"
    },
    {
      name    = "nome_proprietario"
      type    = "string"
      comment = "Nome da coluna na origem: nome_proprietario;"
    },
    {
      name    = "cpf_proprietario"
      type    = "string"
      comment = "Nome da coluna na origem: cpf_proprietario;"
    },
    {
      name    = "data_configuracao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_configuracao;"
    },
    {
      name    = "id_segmento_inicial"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento_inicial;"
    },
    {
      name    = "id_segmento_atual"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento_atual;"
    },
    {
      name    = "split"
      type    = "boolean"
      comment = "Nome da coluna na origem: split;"
    },
    {
      name    = "id_fluxo"
      type    = "int"
      comment = "Nome da coluna na origem: id_fluxo;"
    },
    {
      name    = "poupanca"
      type    = "boolean"
      comment = "Nome da coluna na origem: poupanca;"
    },
    {
      name    = "id_plano_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: id_plano_pagamento;"
    },
    {
      name    = "id_taxa_antecipacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_taxa_antecipacao;"
    },
    {
      name    = "multicliente"
      type    = "boolean"
      comment = "Nome da coluna na origem: multicliente;"
    },
    {
      name    = "recorrente"
      type    = "boolean"
      comment = "Nome da coluna na origem: recorrente;"
    },
    {
      name    = "ecommerce"
      type    = "boolean"
      comment = "Nome da coluna na origem: ecommerce;"
    },
    {
      name    = "bloquear_pagamento"
      type    = "boolean"
      comment = "Nome da coluna na origem: bloquear_pagamento;"
    },
    {
      name    = "id_tipo_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_pagamento;"
    },
    {
      name    = "num_dias_antecipacao"
      type    = "int"
      comment = "Nome da coluna na origem: num_dias_antecipacao;"
    },
    {
      name    = "taxa_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa_antecipacao;"
    },
    {
      name    = "bloqueio_antecipacao"
      type    = "boolean"
      comment = "Nome da coluna na origem: bloqueio_antecipacao;"
    },
    {
      name    = "etapa_cadastro"
      type    = "int"
      comment = "Nome da coluna na origem: etapa_cadastro;"
    },
    {
      name    = "multiplo"
      type    = "boolean"
      comment = "Nome da coluna na origem: multiplo;"
    },
    {
      name    = "percentual_antecipacao_chip_senha"
      type    = "int"
      comment = "Nome da coluna na origem: percentual_antecipacao_chip_senha;"
    },
    {
      name    = "percentual_antecipacao_nao_chip_senha"
      type    = "int"
      comment = "Nome da coluna na origem: percentual_antecipacao_nao_chip_senha;"
    },
    {
      name    = "id_tipo_cobranca"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_cobranca;"
    },
    {
      name    = "pagamento_ted"
      type    = "boolean"
      comment = "Nome da coluna na origem: pagamento_ted;"
    },
    {
      name    = "id_status_cadastro"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_cadastro;"
    },
    {
      name    = "id_valida_conta"
      type    = "boolean"
      comment = "Nome da coluna na origem: id_valida_conta;"
    },
    {
      name    = "id_tipo_antecipacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_antecipacao;"
    },
    {
      name    = "data_ativacao_primeiro_pdv"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_ativacao_primeiro_pdv;"
    },
    {
      name    = "data_cadastro"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_cadastro;"
    },
    {
      name    = "cobranca_chip"
      type    = "boolean"
      comment = "Nome da coluna na origem: cobranca_chip;"
    },
    {
      name    = "faturamento"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: faturamento;"
    }
  ]
}

module "tb_cnae" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cnae"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_cnae"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_cnae/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cnae"
      type    = "int"
      comment = "Nome da coluna na origem: id_cnae;"
    },
    {
      name    = "desc_cnae"
      type    = "string"
      comment = "Nome da coluna na origem: desc_cnae;"
    },
    {
      name    = "cod_cnae"
      type    = "string"
      comment = "Nome da coluna na origem: cod_cnae;"
    },
    {
      name    = "mcc"
      type    = "int"
      comment = "Nome da coluna na origem: mcc;"
    },
    {
      name    = "id_segmento"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento;"
    },
    {
      name    = "adm"
      type    = "boolean"
      comment = "Nome da coluna na origem: adm;"
    },
    {
      name    = "restrito"
      type    = "boolean"
      comment = "Nome da coluna na origem: restrito;"
    },
    {
      name    = "proibido"
      type    = "boolean"
      comment = "Nome da coluna na origem: proibido;"
    },
    {
      name    = "permissao_link_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: permissao_link_pagamento;"
    },
    {
      name    = "id_chave_konduto"
      type    = "int"
      comment = "Nome da coluna na origem: id_chave_konduto;"
    }
  ]
}

module "tb_cobranca_agenda" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cobranca_agenda"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_cobranca_agenda"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_cobranca_agenda/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cobranca_agenda"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cobranca_agenda;"
    },
    {
      name    = "id_cliente"
      type    = "int"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_tipo_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_transacao;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "data_cadastro"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_cadastro;"
    },
    {
      name    = "valor_total"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total;"
    },
    {
      name    = "data_inicio_cobranca"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_inicio_cobranca;"
    },
    {
      name    = "quantidade_parcelas"
      type    = "int"
      comment = "Nome da coluna na origem: quantidade_parcelas;"
    },
    {
      name    = "id_pedido"
      type    = "int"
      comment = "Nome da coluna na origem: id_pedido;"
    },
  ]
}

module "tb_cobranca_agenda_parcelas" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cobranca_agenda_parcelas"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_cobranca_agenda_parcelas"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_cobranca_agenda_parcelas/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cobranca_agenda_parcelas"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cobranca_agenda_parcelas;"
    },
    {
      name    = "id_cobranca_agenda"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cobranca_agenda;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "data"
      type    = "date"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "parcela_numero"
      type    = "int"
      comment = "Nome da coluna na origem: parcela_numero;"
    }
  ]
}

module "tb_cobranca_agenda_parcelas_situacao" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cobranca_agenda_parcelas_situacao"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_cobranca_agenda_parcelas_situacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_cobranca_agenda_parcelas_situacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cobranca_parcelas_situacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_cobranca_parcelas_situacao;"
    },
    {
      name    = "id_cobranca_agenda_parcelas"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cobranca_agenda_parcelas;"
    },
    {
      name    = "id_status_cobranca_agenda"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_cobranca_agenda;"
    },
    {
      name    = "id_agenda_financeira"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_agenda_financeira;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "descricao"
      type    = "string"
      comment = "Nome da coluna na origem: descricao;"
    }
  ]
}

module "tb_custos_antecipacao_remuneracao_parceiro" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_custos_antecipacao_remuneracao_parceiro"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_custos_antecipacao_remuneracao_parceiro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_custos_antecipacao_remuneracao_parceiro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_segmento"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento;"
    },
    {
      name    = "custo"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: custo;"
    }
  ]
}

module "tb_custos_remuneracao_parceiro" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_custos_remuneracao_parceiro"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_custos_remuneracao_parceiro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_custos_remuneracao_parceiro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_segmento"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento;"
    },
    {
      name    = "id_bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira;"
    },
    {
      name    = "parcela_min"
      type    = "int"
      comment = "Nome da coluna na origem: parcela_min;"
    },
    {
      name    = "parcela_max"
      type    = "int"
      comment = "Nome da coluna na origem: parcela_max;"
    },
    {
      name    = "custo"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: custo;"
    }
  ]
}

module "tb_endereco" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_endereco"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_endereco"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_endereco/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_tipo_endereco"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_endereco;"
    },
    {
      name    = "destinatario"
      type    = "string"
      comment = "Nome da coluna na origem: destinatario;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "int"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "complemento"
      type    = "string"
      comment = "Nome da coluna na origem: complemento;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "id_cidade"
      type    = "int"
      comment = "Nome da coluna na origem: id_cidade;"
    },
  ]
}

module "tb_log" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_log"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_log"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_log/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_pedido"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_pedido;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "log"
      type    = "string"
      comment = "Nome da coluna na origem: log;"
    },
    {
      name    = "arquivo"
      type    = "boolean"
      comment = "Nome da coluna na origem: arquivo;"
    },
  ]
}

module "tb_parceiro" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_parceiro"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_parceiro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_parceiro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_parceiro_pai"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro_pai;"
    },
    {
      name    = "cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cnpj;"
    },
    {
      name    = "razao"
      type    = "string"
      comment = "Nome da coluna na origem: razao;"
    },
    {
      name    = "fantasia"
      type    = "string"
      comment = "Nome da coluna na origem: fantasia;"
    },
    {
      name    = "id_banco"
      type    = "int"
      comment = "Nome da coluna na origem: id_banco;"
    },
    {
      name    = "agencia"
      type    = "string"
      comment = "Nome da coluna na origem: agencia;"
    },
    {
      name    = "conta"
      type    = "string"
      comment = "Nome da coluna na origem: conta;"
    },
    {
      name    = "id_status"
      type    = "int"
      comment = "Nome da coluna na origem: id_status;"
    },
    {
      name    = "agencia_dv"
      type    = "int"
      comment = "Nome da coluna na origem: agencia_dv;"
    },
    {
      name    = "inscricao_estadual"
      type    = "string"
      comment = "Nome da coluna na origem: inscricao_estadual;"
    },
    {
      name    = "poupanca"
      type    = "boolean"
      comment = "Nome da coluna na origem: poupanca;"
    },
    {
      name    = "id_operacao_caixa"
      type    = "int"
      comment = "Nome da coluna na origem: id_operacao_caixa;"
    },
    {
      name    = "url"
      type    = "int"
      comment = "Nome da coluna na origem: url;"
    },
    {
      name    = "perfil_cliente"
      type    = "int"
      comment = "Nome da coluna na origem: perfil_cliente;"
    },
    {
      name    = "cod_bmg"
      type    = "bigint"
      comment = "Nome da coluna na origem: cod_bmg;"
    },
    {
      name    = "id_usuario_gestor"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario_gestor;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "calcular_remuneracao"
      type    = "boolean"
      comment = "Nome da coluna na origem: calcular_remuneracao;"
    },
    {
      name    = "cobrar_cliente_nao_vinculado"
      type    = "boolean"
      comment = "Nome da coluna na origem: cobrar_cliente_nao_vinculado;"
    }
  ]
}

module "tb_parceiro_configuracoes" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_parceiro_configuracoes"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_parceiro_configuracoes"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_parceiro_configuracoes/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "chave"
      type    = "string"
      comment = "Nome da coluna na origem: chave;"
    },
    {
      name    = "valor"
      type    = "string"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "data_criacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_criacao;"
    },
    {
      name    = "ultima_atualizacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: ultima_atualizacao;"
    },
    {
      name    = "ativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: ativo;"
    },
  ]
}

module "tb_pdv" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_pdv"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_pdv"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_pdv/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "numero_pdv"
      type    = "int"
      comment = "Nome da coluna na origem: numero_pdv;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "versao_bin"
      type    = "string"
      comment = "Nome da coluna na origem: versao_bin;"
    },
    {
      name    = "versao_img"
      type    = "string"
      comment = "Nome da coluna na origem: versao_img;"
    },
    {
      name    = "serial"
      type    = "string"
      comment = "Nome da coluna na origem: serial;"
    },
    {
      name    = "sim_card"
      type    = "string"
      comment = "Nome da coluna na origem: sim_card;"
    },
    {
      name    = "nome_comprovante"
      type    = "string"
      comment = "Nome da coluna na origem: nome_comprovante;"
    },
    {
      name    = "ativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: ativo;"
    },
    {
      name    = "data_ativacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_ativacao;"
    },
    {
      name    = "senha"
      type    = "string"
      comment = "Nome da coluna na origem: senha;"
    }
  ]
}

module "tb_pedido" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_pedido"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_pedido"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_pedido/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_pedido"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_pedido;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_tipo_pedido"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_pedido;"
    },
    {
      name    = "id_status"
      type    = "int"
      comment = "Nome da coluna na origem: id_status;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "id_pedido_caixa"
      type    = "string"
      comment = "Nome da coluna na origem: id_pedido_caixa;"
    },
    {
      name    = "id_pedido_pax"
      type    = "string"
      comment = "Nome da coluna na origem: id_pedido_pax;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "qtd_equipamentos"
      type    = "int"
      comment = "Nome da coluna na origem: qtd_equipamentos;"
    },
    {
      name    = "id_usuario_gmp"
      type    = "int"
      comment = "Nome da coluna na origem: id_usuario_gmp;"
    },
    {
      name    = "id_status_pedido"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_pedido;"
    },
    {
      name    = "id_pedido_complementar"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_pedido_complementar;"
    },
    {
      name    = "data_configuracao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_configuracao;"
    },
    {
      name    = "id_metodo_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: id_metodo_pagamento;"
    },
    {
      name    = "valor_faturamento"
      type    = "decimal(12,2)"
      comment = "Nome da coluna na origem: valor_faturamento;"
    },
    {
      name    = "data_faturamento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_faturamento;"
    }
  ]
}

module "tb_processo_pagamento_cliente" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_processo_pagamento_cliente"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_processo_pagamento_cliente"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_processo_pagamento_cliente/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_processo_pagamento_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_processo_pagamento_cliente;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "data_envio_banco"
      type    = "date"
      comment = "Nome da coluna na origem: data_envio_banco;"
    },
    {
      name    = "id_status_processo_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_processo_pagamento;"
    },
    {
      name    = "tipo_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: tipo_transacao;"
    },
    {
      name    = "id_bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira;"
    },
    {
      name    = "id_processo_relacionado"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_processo_relacionado;"
    },
    {
      name    = "id_ultimo_pagamento_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_ultimo_pagamento_cliente;"
    },
  ]
}

module "tb_remuneracao_transacao_parceiro" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_remuneracao_transacao_parceiro"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_remuneracao_transacao_parceiro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_remuneracao_transacao_parceiro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_agenda_financeira"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_agenda_financeira;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "tipo_remuneracao"
      type    = "int"
      comment = "Nome da coluna na origem: tipo_remuneracao;"
    },
    {
      name    = "base_remuneracao"
      type    = "int"
      comment = "Nome da coluna na origem: base_remuneracao;"
    },
    {
      name    = "parceiro_pai"
      type    = "boolean"
      comment = "Nome da coluna na origem: parceiro_pai;"
    },
    {
      name    = "divide_custo"
      type    = "boolean"
      comment = "Nome da coluna na origem: divide_custo;"
    },
    {
      name    = "custo_transacao"
      type    = "decimal(12,2)"
      comment = "Nome da coluna na origem: custo_transacao;"
    },
    {
      name    = "imposto_transacao"
      type    = "decimal(6,4)"
      comment = "Nome da coluna na origem: imposto_transacao;"
    },
    {
      name    = "percentual_transacao"
      type    = "decimal(4,2)"
      comment = "Nome da coluna na origem: percentual_transacao;"
    },
    {
      name    = "remuneracao_transacao"
      type    = "decimal(12,3)"
      comment = "Nome da coluna na origem: remuneracao_transacao;"
    },
    {
      name    = "custo_antecipacao"
      type    = "decimal(12,2)"
      comment = "Nome da coluna na origem: custo_antecipacao;"
    },
    {
      name    = "imposto_antecipacao"
      type    = "decimal(6,4)"
      comment = "Nome da coluna na origem: imposto_antecipacao;"
    },
    {
      name    = "percentual_antecipacao"
      type    = "decimal(4,2)"
      comment = "Nome da coluna na origem: percentual_antecipacao;"
    },
    {
      name    = "remuneracao_antecipacao"
      type    = "decimal(12,3)"
      comment = "Nome da coluna na origem: remuneracao_antecipacao;"
    }
  ]
}

module "tb_segmento" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_segmento"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_segmento"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_segmento/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_segmento"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento;"
    },
    {
      name    = "desc_segmento"
      type    = "string"
      comment = "Nome da coluna na origem: desc_segmento;"
    },
    {
      name    = "ativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: ativo;"
    }
  ]
}

module "transacao2" {
  source = "./modules/aws_glue/table"

  table_name             = "transacao"
  database_name          = "db_raw_pago_srv"
  description            = "db_raw_pago_srv.transacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_srv/transacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "empresa"
      type    = "bigint"
      comment = "Nome da coluna na origem: empresa;"
    },
    {
      name    = "pdv"
      type    = "string"
      comment = "Nome da coluna na origem: pdv;"
    },
    {
      name    = "rede"
      type    = "string"
      comment = "Nome da coluna na origem: rede;"
    },
    {
      name    = "bandeira"
      type    = "string"
      comment = "Nome da coluna na origem: bandeira;"
    },
    {
      name    = "numero_logico"
      type    = "string"
      comment = "Nome da coluna na origem: numero_logico;"
    },
    {
      name    = "terminal"
      type    = "string"
      comment = "Nome da coluna na origem: terminal;"
    },
    {
      name    = "versao_cliente"
      type    = "string"
      comment = "Nome da coluna na origem: versao_cliente;"
    },
    {
      name    = "moeda"
      type    = "string"
      comment = "Nome da coluna na origem: moeda;"
    },
    {
      name    = "codigo_pais"
      type    = "string"
      comment = "Nome da coluna na origem: codigo_pais;"
    },
    {
      name    = "dthr_server"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dthr_server;"
    },
    {
      name    = "dthr_client"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dthr_client;"
    },
    {
      name    = "dthr_gmt"
      type    = "string"
      comment = "Nome da coluna na origem: dthr_gmt;"
    },
    {
      name    = "dt_local"
      type    = "string"
      comment = "Nome da coluna na origem: dt_local;"
    },
    {
      name    = "hr_local"
      type    = "string"
      comment = "Nome da coluna na origem: hr_local;"
    },
    {
      name    = "mti"
      type    = "string"
      comment = "Nome da coluna na origem: mti;"
    },
    {
      name    = "pan_visivel"
      type    = "string"
      comment = "Nome da coluna na origem: pan_visivel;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "nsu_pdv"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_pdv;"
    },
    {
      name    = "nsu_host"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_host;"
    },
    {
      name    = "autorizacao"
      type    = "string"
      comment = "Nome da coluna na origem: autorizacao;"
    },
    {
      name    = "autorizacao_pago"
      type    = "string"
      comment = "Nome da coluna na origem: autorizacao_pago;"
    },
    {
      name    = "resposta"
      type    = "string"
      comment = "Nome da coluna na origem: resposta;"
    },
    {
      name    = "tipo_transacao"
      type    = "string"
      comment = "Nome da coluna na origem: tipo_transacao;"
    },
    {
      name    = "forma_captura"
      type    = "string"
      comment = "Nome da coluna na origem: forma_captura;"
    },
    {
      name    = "forma_pagamento"
      type    = "string"
      comment = "Nome da coluna na origem: forma_pagamento;"
    },
    {
      name    = "modalidade_parcelamento"
      type    = "string"
      comment = "Nome da coluna na origem: modalidade_parcelamento;"
    },
    {
      name    = "parcelas"
      type    = "string"
      comment = "Nome da coluna na origem: parcelas;"
    },
    {
      name    = "ns_pinpad"
      type    = "string"
      comment = "Nome da coluna na origem: ns_pinpad;"
    },
    {
      name    = "sw_basico"
      type    = "string"
      comment = "Nome da coluna na origem: sw_basico;"
    },
    {
      name    = "versao_bc"
      type    = "string"
      comment = "Nome da coluna na origem: versao_bc;"
    },
    {
      name    = "fabricante_pp"
      type    = "string"
      comment = "Nome da coluna na origem: fabricante_pp;"
    },
    {
      name    = "modelo_pp"
      type    = "string"
      comment = "Nome da coluna na origem: modelo_pp;"
    },
    {
      name    = "fallback"
      type    = "string"
      comment = "Nome da coluna na origem: fallback;"
    },
    {
      name    = "numero_tentativas"
      type    = "string"
      comment = "Nome da coluna na origem: numero_tentativas;"
    },
    {
      name    = "pin_bloqueado"
      type    = "string"
      comment = "Nome da coluna na origem: pin_bloqueado;"
    },
    {
      name    = "pin_offline"
      type    = "string"
      comment = "Nome da coluna na origem: pin_offline;"
    },
    {
      name    = "pin_online"
      type    = "string"
      comment = "Nome da coluna na origem: pin_online;"
    },
    {
      name    = "assinatura"
      type    = "string"
      comment = "Nome da coluna na origem: assinatura;"
    },
    {
      name    = "arqc"
      type    = "string"
      comment = "Nome da coluna na origem: arqc;"
    },
    {
      name    = "arpc"
      type    = "string"
      comment = "Nome da coluna na origem: arpc;"
    },
    {
      name    = "viacartao"
      type    = "string"
      comment = "Nome da coluna na origem: viacartao;"
    },
    {
      name    = "aid_cartao"
      type    = "string"
      comment = "Nome da coluna na origem: aid_cartao;"
    },
    {
      name    = "app_label"
      type    = "string"
      comment = "Nome da coluna na origem: app_label;"
    },
    {
      name    = "trn_vinculada"
      type    = "bigint"
      comment = "Nome da coluna na origem: trn_vinculada;"
    },
    {
      name    = "status"
      type    = "string"
      comment = "Nome da coluna na origem: status;"
    },
    {
      name    = "num_servidor"
      type    = "int"
      comment = "Nome da coluna na origem: num_servidor;"
    },
    {
      name    = "pan_cripto"
      type    = "string"
      comment = "Nome da coluna na origem: pan_cripto;"
    },
    {
      name    = "trilha_dois"
      type    = "string"
      comment = "Nome da coluna na origem: trilha_dois;"
    },
    {
      name    = "nsu_rede"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_rede;"
    },
    {
      name    = "nsu_aut"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_aut;"
    },
    {
      name    = "aprovada_chip"
      type    = "string"
      comment = "Nome da coluna na origem: aprovada_chip;"
    },
    {
      name    = "tags_emv"
      type    = "string"
      comment = "Nome da coluna na origem: tags_emv;"
    },
    {
      name    = "mcc"
      type    = "string"
      comment = "Nome da coluna na origem: mcc;"
    },
    {
      name    = "dtparcelacrediario"
      type    = "string"
      comment = "Nome da coluna na origem: dtparcelacrediario;"
    },
    {
      name    = "b46"
      type    = "string"
      comment = "Nome da coluna na origem: b46;"
      }, {
      name    = "b48"
      type    = "string"
      comment = "Nome da coluna na origem: b48;"
    },
    {
      name    = "tags_emvret"
      type    = "string"
      comment = "Nome da coluna na origem: tags_emvret;"
    },
    {
      name    = "m05"
      type    = "string"
      comment = "Nome da coluna na origem: m05;"
    },
    {
      name    = "m06"
      type    = "string"
      comment = "Nome da coluna na origem: m06;"
    },
    {
      name    = "m15"
      type    = "string"
      comment = "Nome da coluna na origem: m15;"
    },
    {
      name    = "m16"
      type    = "string"
      comment = "Nome da coluna na origem: m16;"
    },
    {
      name    = "m63"
      type    = "string"
      comment = "Nome da coluna na origem: m63;"
    },
    {
      name    = "base2"
      type    = "boolean"
      comment = "Nome da coluna na origem: base2;"
    },
    {
      name    = "v61"
      type    = "string"
      comment = "Nome da coluna na origem: v61;"
    },
    {
      name    = "v117"
      type    = "string"
      comment = "Nome da coluna na origem: v117;"
    },
    {
      name    = "v62"
      type    = "string"
      comment = "Nome da coluna na origem: v62;"
    },
    {
      name    = "v63"
      type    = "string"
      comment = "Nome da coluna na origem: v63;"
    },
    {
      name    = "bit43"
      type    = "string"
      comment = "Nome da coluna na origem: bit43;"
    },
    {
      name    = "bit44"
      type    = "string"
      comment = "Nome da coluna na origem: bit44;"
    },
    {
      name    = "bit54"
      type    = "string"
      comment = "Nome da coluna na origem: bit54;"
    },
  ]
}

# tabela sem schemas
# module "paymentqrcodes" {
#   source = "./modules/aws_glue/table"

#   table_name     = "paymentqrcodes"
#   database_name  = "db_raw_pix_gateway"
#   description    = "db_raw_pix_gateway.paymentqrcodes"
#   table_type     = "EXTERNAL_TABLE"
#   location       = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pix_gateway/paymentqrcodes/"
#   input_format   = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
#   output_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
#   serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
#   ser_de_info_parameters = {}

#   columns = [
#     {
#       name    = ""
#       type    = ""
#       comment = ""
#     },
#   ]
# }

module "recurringtransactions" {
  source = "./modules/aws_glue/table"

  table_name             = "recurringtransactions"
  database_name          = "db_raw_rc_gateway"
  description            = "db_raw_rc_gateway.recurringtransactions"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_rc_gateway/recurringtransactions/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "recurrenceid"
      type    = "bigint"
      comment = "Nome da coluna na origem: recurrenceid;"
    },
    {
      name    = "installmentnumber"
      type    = "int"
      comment = "Nome da coluna na origem: installmentnumber;"
    },
    {
      name    = "transactionid"
      type    = "bigint"
      comment = "Nome da coluna na origem: transactionid;"
    },
    {
      name    = "created"
      type    = "timestamp"
      comment = "Nome da coluna na origem: created;"
    },
    {
      name    = "lastupdated"
      type    = "timestamp"
      comment = "Nome da coluna na origem: lastupdated;"
    },
    {
      name    = "active"
      type    = "boolean"
      comment = "Nome da coluna na origem: active;"
    },
    {
      name    = "authorizationcode"
      type    = "string"
      comment = "Nome da coluna na origem: authorizationcode;"
    },
    {
      name    = "proofofsale"
      type    = "string"
      comment = "Nome da coluna na origem: proofofsale;"
    }
  ]
}

# sem descrição
# module "tb_dim_cnae" {
#   source = "./modules/aws_glue/table"

#   table_name     = "tb_dim_cnae"
#   database_name  = "db_refined_comercial"
#   description    = "db_refined_comercial.tb_dim_cnae"
#   table_type     = "EXTERNAL_TABLE"
#   location       = "s3://ex-grt-aos-spdt-datalake-refined/db_refined_comercial"
#   input_format   = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
#   output_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
#   serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
#   ser_de_info_parameters = {}

#   columns = [
#     {
#       name    = "id_cnae"
#       type    = "int"
#       comment = "Nome da coluna na origem: id_cnae;"
#     },
#     {
#       name    = "id_mcc"
#       type    = "int"
#       comment = "Nome da coluna na origem: id_mcc;"
#     },
#     {
#       name    = "cod_cnae"
#       type    = "string"
#       comment = "Nome da coluna na origem: cod_cnae;"
#     },
#     {
#       name    = "desc_cnae"
#       type    = "string"
#       comment = "Nome da coluna na origem: desc_cnae;"
#     },
#     {
#       name    = "cod_cnae_granito"
#       type    = "int"
#       comment = "Nome da coluna na origem: cod_cnae_granito;"
#     },
#   ]
# }

# sem descrição
# module "dim_consultor" {
#   source = "./modules/aws_glue/table"

#   table_name     = "dim_consultor"
#   database_name  = "db_refined_pago_portal"
#   description    = "db_refined_pago_portal.dim_consultor"
#   table_type     = "EXTERNAL_TABLE"
#   location       = "s3://ex-grt-aos-spdt-datalake-refined/db_refined_pago_portal"
#   input_format   = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
#   output_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
#   serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
#   ser_de_info_parameters = {}

#   columns = [
#     {
#       name    = "id_cliente"
#       type    = "bigint"
#       comment = "Nome da coluna na origem: id_cliente;"
#     },
#   ]
# }

module "tb_dados_receita" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_dados_receita"
  database_name          = "db_trusted_antifraude_db"
  description            = "db_trusted_antifraude_db.tb_dados_receita"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_antifraude_db/tb_dados_receita/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "int"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "razaosocial"
      type    = "string"
      comment = "Nome da coluna na origem: razaosocial;"
    },
    {
      name    = "nome"
      type    = "string"
      comment = "Nome da coluna na origem: nome;"
    },
    {
      name    = "cpfcnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cpfcnpj;"
    },
    {
      name    = "rgie"
      type    = "string"
      comment = "Nome da coluna na origem: rgie;"
    },
    {
      name    = "datanascimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datanascimento;"
    },
    {
      name    = "nomemae"
      type    = "string"
      comment = "Nome da coluna na origem: nomemae;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "string"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "complemento"
      type    = "string"
      comment = "Nome da coluna na origem: complemento;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "cidade"
      type    = "string"
      comment = "Nome da coluna na origem: cidade;"
    },
    {
      name    = "estado"
      type    = "string"
      comment = "Nome da coluna na origem: estado;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "codigoibge"
      type    = "string"
      comment = "Nome da coluna na origem: codigoibge;"
    },
    {
      name    = "telefone"
      type    = "string"
      comment = "Nome da coluna na origem: telefone;"
    },
    {
      name    = "email"
      type    = "string"
      comment = "Nome da coluna na origem: email;"
    },
    {
      name    = "cnaeprincipal"
      type    = "string"
      comment = "Nome da coluna na origem: cnaeprincipal;"
    },
    {
      name    = "precadastroid"
      type    = "int"
      comment = "Nome da coluna na origem: precadastroid;"
    },
    {
      name    = "datacadastro"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datacadastro;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "vinculo"
      type    = "string"
      comment = "Nome da coluna na origem: vinculo;"
    },
    {
      name    = "ppe"
      type    = "boolean"
      comment = "Nome da coluna na origem: ppe;"
    },
    {
      name    = "cnpjstatus"
      type    = "string"
      comment = "Nome da coluna na origem: cnpjstatus;"
    },
    {
      name    = "cpfstatus"
      type    = "string"
      comment = "Nome da coluna na origem: cpfstatus;"
    },
    {
      name    = "indicacaoobito"
      type    = "boolean"
      comment = "Nome da coluna na origem: indicacaoobito;"
    },
    {
      name    = "cnaedescricao"
      type    = "string"
      comment = "Nome da coluna na origem: cnaedescricao;"
    },
    {
      name    = "cnaeid"
      type    = "int"
      comment = "Nome da coluna na origem: cnaeid;"
    },
    {
      name    = "regime"
      type    = "string"
      comment = "Nome da coluna na origem: regime;"
    },
    {
      name    = "originalnomeofac"
      type    = "string"
      comment = "Nome da coluna na origem: originalnomeofac;"
    },
    {
      name    = "porcentagemofac"
      type    = "decimal(18,5)"
      comment = "Nome da coluna na origem: porcentagemofac;"
    },
    {
      name    = "codigoregime"
      type    = "string"
      comment = "Nome da coluna na origem: codigoregime;"
    },
  ]
}

module "tb_pre_cadastro" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_pre_cadastro"
  database_name          = "db_trusted_antifraude_db"
  description            = "db_trusted_antifraude_db.tb_pre_cadastro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_antifraude_db/tb_pre_cadastro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "int"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cnpj;"
    },
    {
      name    = "ie"
      type    = "string"
      comment = "Nome da coluna na origem: ie;"
    },
    {
      name    = "razaosocial"
      type    = "string"
      comment = "Nome da coluna na origem: razaosocial;"
    },
    {
      name    = "cnaeprincipal"
      type    = "string"
      comment = "Nome da coluna na origem: cnaeprincipal;"
    },
    {
      name    = "nomesolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: nomesolicitante;"
    },
    {
      name    = "cpfsolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: cpfsolicitante;"
    },
    {
      name    = "rgsolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: rgsolicitante;"
    },
    {
      name    = "fotosolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: fotosolicitante;"
    },
    {
      name    = "fotodocumentosolicitante"
      type    = "string"
      comment = "Nome da coluna na origem: fotodocumentosolicitante;"
    },
    {
      name    = "tipodocumento"
      type    = "string"
      comment = "Nome da coluna na origem: tipodocumento;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "string"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "complemento"
      type    = "string"
      comment = "Nome da coluna na origem: complemento;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "cidade"
      type    = "string"
      comment = "Nome da coluna na origem: cidade;"
    },
    {
      name    = "estado"
      type    = "string"
      comment = "Nome da coluna na origem: estado;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "gpslat"
      type    = "string"
      comment = "Nome da coluna na origem: gpslat;"
    },
    {
      name    = "gpslng"
      type    = "string"
      comment = "Nome da coluna na origem: gpslng;"
    },
    {
      name    = "fotofachada"
      type    = "string"
      comment = "Nome da coluna na origem: fotofachada;"
    },
    {
      name    = "origemcadastro"
      type    = "string"
      comment = "Nome da coluna na origem: origemcadastro;"
    },
    {
      name    = "datacadastro"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datacadastro;"
    },
    {
      name    = "status"
      type    = "int"
      comment = "Nome da coluna na origem: status;"
    },
    {
      name    = "statuscomplemento"
      type    = "string"
      comment = "Nome da coluna na origem: statuscomplemento;"
    },
    {
      name    = "statusmanual"
      type    = "string"
      comment = "Nome da coluna na origem: statusmanual;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "etapa"
      type    = "int"
      comment = "Nome da coluna na origem: etapa;"
    },
    {
      name    = "chaveconsulta"
      type    = "string"
      comment = "Nome da coluna na origem: chaveconsulta;"
    },
    {
      name    = "parceiroid"
      type    = "int"
      comment = "Nome da coluna na origem: parceiroid;"
    },
    {
      name    = "usuarioid"
      type    = "int"
      comment = "Nome da coluna na origem: usuarioid;"
    },
    {
      name    = "operacaocaixa"
      type    = "string"
      comment = "Nome da coluna na origem: operacaocaixa;"
    },
    {
      name    = "banco"
      type    = "int"
      comment = "Nome da coluna na origem: banco;"
    },
    {
      name    = "agencia"
      type    = "string"
      comment = "Nome da coluna na origem: agencia;"
    },
    {
      name    = "agenciadv"
      type    = "string"
      comment = "Nome da coluna na origem: agenciadv;"
    },
    {
      name    = "conta"
      type    = "string"
      comment = "Nome da coluna na origem: conta;"
    },
    {
      name    = "contribuinte"
      type    = "boolean"
      comment = "Nome da coluna na origem: contribuinte;"
    },
    {
      name    = "contapoupanca"
      type    = "boolean"
      comment = "Nome da coluna na origem: contapoupanca;"
    },
    {
      name    = "numdiasantecipacao"
      type    = "int"
      comment = "Nome da coluna na origem: numdiasantecipacao;"
    },
    {
      name    = "taxaantecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxaantecipacao;"
    },
    {
      name    = "taxadebito"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxadebito;"
    },
    {
      name    = "taxacredito"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxacredito;"
    },
    {
      name    = "taxacredito2a6"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxacredito2a6;"
    },
    {
      name    = "taxacredito7a12"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxacredito7a12;"
    },
    {
      name    = "ecommerce"
      type    = "boolean"
      comment = "Nome da coluna na origem: ecommerce;"
    },
    {
      name    = "tipocobranca"
      type    = "string"
      comment = "Nome da coluna na origem: tipocobranca;"
    },
    {
      name    = "datastatus"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datastatus;"
    },
    {
      name    = "clienteid"
      type    = "int"
      comment = "Nome da coluna na origem: clienteid;"
    },
    {
      name    = "nomefantasia"
      type    = "string"
      comment = "Nome da coluna na origem: nomefantasia;"
    },
    {
      name    = "datanascimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datanascimento;"
    },
    {
      name    = "nomemae"
      type    = "string"
      comment = "Nome da coluna na origem: nomemae;"
    },
    {
      name    = "codigoibge"
      type    = "string"
      comment = "Nome da coluna na origem: codigoibge;"
    },
    {
      name    = "cnaedescricao"
      type    = "string"
      comment = "Nome da coluna na origem: cnaedescricao;"
    },
    {
      name    = "idramoatividadepf"
      type    = "int"
      comment = "Nome da coluna na origem: idramoatividadepf;"
    },
    {
      name    = "usuariotratativaid"
      type    = "bigint"
      comment = "Nome da coluna na origem: usuariotratativaid;"
    },
    {
      name    = "dataabertura"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataabertura;"
    }
  ]
}

module "tb_autorizacao_pagamento" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_autorizacao_pagamento"
  database_name          = "db_trusted_ec_gateway"
  description            = "db_trusted_ec_gateway.tb_autorizacao_pagamento"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_ec_gateway/tb_autorizacao_pagamento/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "paymentauthorizationid"
      type    = "bigint"
      comment = "Nome da coluna na origem: paymentauthorizationid;"
    },
    {
      name    = "paymentid"
      type    = "string"
      comment = "Nome da coluna na origem: paymentid;"
    },
    {
      name    = "merchantorderid"
      type    = "string"
      comment = "Nome da coluna na origem: merchantorderid;"
    },
    {
      name    = "amount"
      type    = "decimal(15,2)"
      comment = "Nome da coluna na origem: amount;"
    },
    {
      name    = "installments"
      type    = "int"
      comment = "Nome da coluna na origem: installments;"
    },
    {
      name    = "settle"
      type    = "boolean"
      comment = "Nome da coluna na origem: settle;"
    },
    {
      name    = "authenticate"
      type    = "boolean"
      comment = "Nome da coluna na origem: authenticate;"
    },
    {
      name    = "termurl"
      type    = "string"
      comment = "Nome da coluna na origem: termurl;"
    },
    {
      name    = "paymentmethodtoken"
      type    = "string"
      comment = "Nome da coluna na origem: paymentmethodtoken;"
    },
    {
      name    = "cardtype"
      type    = "string"
      comment = "Nome da coluna na origem: cardtype;"
    },
    {
      name    = "cardbrand"
      type    = "string"
      comment = "Nome da coluna na origem: cardbrand;"
    },
    {
      name    = "cardnumber"
      type    = "string"
      comment = "Nome da coluna na origem: cardnumber;"
    },
    {
      name    = "holdername"
      type    = "string"
      comment = "Nome da coluna na origem: holdername;"
    },
    {
      name    = "holderdocument"
      type    = "string"
      comment = "Nome da coluna na origem: holderdocument;"
    },
    {
      name    = "transactionid"
      type    = "string"
      comment = "Nome da coluna na origem: transactionid;"
    },
    {
      name    = "authorizationcode"
      type    = "string"
      comment = "Nome da coluna na origem: authorizationcode;"
    },
    {
      name    = "proofofsale"
      type    = "string"
      comment = "Nome da coluna na origem: proofofsale;"
    },
    {
      name    = "returncode"
      type    = "string"
      comment = "Nome da coluna na origem: returncode;"
    },
    {
      name    = "returnmessage"
      type    = "string"
      comment = "Nome da coluna na origem: returnmessage;"
    },
    {
      name    = "paymentstatus"
      type    = "int"
      comment = "Nome da coluna na origem: paymentstatus;"
    },
    {
      name    = "merchantid"
      type    = "bigint"
      comment = "Nome da coluna na origem: merchantid;"
    },
    {
      name    = "created"
      type    = "timestamp"
      comment = "Nome da coluna na origem: created;"
    },
    {
      name    = "lastupdated"
      type    = "timestamp"
      comment = "Nome da coluna na origem: lastupdated;"
    },
    {
      name    = "active"
      type    = "boolean"
      comment = "Nome da coluna na origem: active;"
    },
    {
      name    = "providername"
      type    = "string"
      comment = "Nome da coluna na origem: providername;"
    },
    {
      name    = "providerpaymentid"
      type    = "string"
      comment = "Nome da coluna na origem: providerpaymentid;"
    },
    {
      name    = "cardbrandcode"
      type    = "string"
      comment = "Nome da coluna na origem: cardbrandcode;"
    },
    {
      name    = "softdescriptor"
      type    = "string"
      comment = "Nome da coluna na origem: softdescriptor;"
    },
    {
      name    = "validationcode"
      type    = "string"
      comment = "Nome da coluna na origem: validationcode;"
    },
    {
      name    = "marketplaceid"
      type    = "bigint"
      comment = "Nome da coluna na origem: marketplaceid;"
    }
  ]
}

module "tb_bin" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_bin"
  database_name          = "db_trusted_granito_base_2"
  description            = "db_trusted_granito_base_2.tb_bin"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_granito_base_2/tb_bin/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "bin"
      type    = "string"
      comment = "Nome da coluna na origem: bin;"
    },
    {
      name    = "fk_emissor"
      type    = "int"
      comment = "Nome da coluna na origem: fk_emissor;"
    },
    {
      name    = "fk_plastico"
      type    = "int"
      comment = "Nome da coluna na origem: fk_plastico;"
    },
    {
      name    = "fk_abrangencia"
      type    = "int"
      comment = "Nome da coluna na origem: fk_abrangencia;"
    },
    {
      name    = "datainclusao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datainclusao;"
    },
    {
      name    = "plataformacredito"
      type    = "string"
      comment = "Nome da coluna na origem: plataformacredito;"
    },
    {
      name    = "plataformadebio"
      type    = "string"
      comment = "Nome da coluna na origem: plataformadebio;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "tipocaptura"
      type    = "string"
      comment = "Nome da coluna na origem: tipocaptura;"
    },
    {
      name    = "tipoproduto"
      type    = "string"
      comment = "Nome da coluna na origem: tipoproduto;"
    },
    {
      name    = "rangeinicial"
      type    = "string"
      comment = "Nome da coluna na origem: rangeinicial;"
    },
    {
      name    = "rangefinal"
      type    = "string"
      comment = "Nome da coluna na origem: rangefinal;"
    },
    {
      name    = "liquidacaoantecipada"
      type    = "boolean"
      comment = "Nome da coluna na origem: liquidacaoantecipada;"
    }
  ]
}

module "tb_empresa_mcc" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_empresa_mcc"
  database_name          = "db_trusted_granito_base_2"
  description            = "db_trusted_granito_base_2.tb_empresa_mcc"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_granito_base_2/tb_empresa_mcc/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "empresa"
      type    = "bigint"
      comment = "Nome da coluna na origem: empresa;"
    },
    {
      name    = "fk_mcc"
      type    = "int"
      comment = "Nome da coluna na origem: fk_mcc;"
    },
    {
      name    = "fk_classificacao"
      type    = "int"
      comment = "Nome da coluna na origem: fk_classificacao;"
    },
    {
      name    = "cnae"
      type    = "string"
      comment = "Nome da coluna na origem: cnae;"
    },
    {
      name    = "descricao"
      type    = "string"
      comment = "Nome da coluna na origem: descricao;"
    },
    {
      name    = "cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cnpj;"
    },
    {
      name    = "razao"
      type    = "string"
      comment = "Nome da coluna na origem: razao;"
    },
    {
      name    = "fantasia"
      type    = "string"
      comment = "Nome da coluna na origem: fantasia;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "string"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "cidade"
      type    = "string"
      comment = "Nome da coluna na origem: cidade;"
    },
    {
      name    = "estado"
      type    = "string"
      comment = "Nome da coluna na origem: estado;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "diasliquidacaodebito"
      type    = "int"
      comment = "Nome da coluna na origem: diasliquidacaodebito;"
    },
    {
      name    = "diasliquidacaocredito"
      type    = "int"
      comment = "Nome da coluna na origem: diasliquidacaocredito;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "liquidacao"
      type    = "string"
      comment = "Nome da coluna na origem: liquidacao;"
    },
    {
      name    = "ispbdomiciliobancario"
      type    = "string"
      comment = "Nome da coluna na origem: ispbdomiciliobancario;"
    },
    {
      name    = "tipocontabancaria"
      type    = "string"
      comment = "Nome da coluna na origem: tipocontabancaria;"
    },
    {
      name    = "agenciabancaria"
      type    = "string"
      comment = "Nome da coluna na origem: agenciabancaria;"
    },
    {
      name    = "contabancaria"
      type    = "string"
      comment = "Nome da coluna na origem: contabancaria;"
    },
    {
      name    = "domiciliobancariotravado"
      type    = "boolean"
      comment = "Nome da coluna na origem: domiciliobancariotravado;"
    },
    {
      name    = "hashcomparacao"
      type    = "string"
      comment = "Nome da coluna na origem: hashcomparacao;"
    },
    {
      name    = "telefone"
      type    = "string"
      comment = "Nome da coluna na origem: telefone;"
    },
    {
      name    = "contato"
      type    = "string"
      comment = "Nome da coluna na origem: contato;"
    },
    {
      name    = "codigoibge"
      type    = "string"
      comment = "Nome da coluna na origem: codigoibge;"
    }
  ]
}

module "tb_evento_andamento" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_evento_andamento"
  database_name          = "db_trusted_granito_base_2"
  description            = "db_trusted_granito_base_2.tb_evento_andamento"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_granito_base_2/tb_evento_andamento/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "fk_controleoutgoing"
      type    = "int"
      comment = "Nome da coluna na origem: fk_controleoutgoing;"
    },
    {
      name    = "numeroremessa"
      type    = "int"
      comment = "Nome da coluna na origem: numeroremessa;"
    },
    {
      name    = "numerojanela"
      type    = "int"
      comment = "Nome da coluna na origem: numerojanela;"
    },
    {
      name    = "datahora"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datahora;"
    },
    {
      name    = "nomearquivo"
      type    = "string"
      comment = "Nome da coluna na origem: nomearquivo;"
    },
    {
      name    = "origemarquivo"
      type    = "int"
      comment = "Nome da coluna na origem: origemarquivo;"
    },
    {
      name    = "fk_idjanela"
      type    = "bigint"
      comment = "Nome da coluna na origem: fk_idjanela;"
    },
  ]
}

module "tb_janela_andamento" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_janela_andamento"
  database_name          = "db_trusted_granito_base_2"
  description            = "db_trusted_granito_base_2.tb_janela_andamento"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_granito_base_2/tb_janela_andamento/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "idjanela"
      type    = "bigint"
      comment = "Nome da coluna na origem: idjanela;"
    },
    {
      name    = "dataenvio"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataenvio;"
    },
    {
      name    = "idremessa"
      type    = "int"
      comment = "Nome da coluna na origem: idremessa;"
    },
    {
      name    = "janela"
      type    = "int"
      comment = "Nome da coluna na origem: janela;"
    },
    {
      name    = "regb0"
      type    = "string"
      comment = "Nome da coluna na origem: regb0;"
    },
    {
      name    = "regbz"
      type    = "string"
      comment = "Nome da coluna na origem: regbz;"
    },
    {
      name    = "plataforma"
      type    = "string"
      comment = "Nome da coluna na origem: plataforma;"
    },
    {
      name    = "fileid"
      type    = "string"
      comment = "Nome da coluna na origem: fileid;"
    },
    {
      name    = "bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: bandeira;"
    },
    {
      name    = "datajanela"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datajanela;"
    },
    {
      name    = "quantidadetotaltransacao"
      type    = "int"
      comment = "Nome da coluna na origem: quantidadetotaltransacao;"
    },
    {
      name    = "valortotaltransacao"
      type    = "decimal(17,2)"
      comment = "Nome da coluna na origem: valortotaltransacao;"
    }
  ]
}

module "tb_mcc" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_mcc"
  database_name          = "db_trusted_granito_base_2"
  description            = "db_trusted_granito_base_2.tb_mcc"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_granito_base_2/tb_mcc/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "mcc"
      type    = "int"
      comment = "Nome da coluna na origem: mcc;"
    },
    {
      name    = "descricao"
      type    = "string"
      comment = "Nome da coluna na origem: descricao;"
    },
    {
      name    = "valor_alto"
      type    = "boolean"
      comment = "Nome da coluna na origem: valor_alto;"
    }
  ]
}

module "tb_transacao_status" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_transacao_status"
  database_name          = "db_trusted_granito_base_2"
  description            = "db_trusted_granito_base_2.tb_transacao_status"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_granito_base_2/tb_transacao_status/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "idtransacao"
      type    = "bigint"
      comment = "Nome da coluna na origem: idtransacao;"
    },
    {
      name    = "referencenumber"
      type    = "string"
      comment = "Nome da coluna na origem: referencenumber;"
    },
    {
      name    = "numeroparcelas"
      type    = "string"
      comment = "Nome da coluna na origem: numeroparcelas;"
    },
    {
      name    = "situacao"
      type    = "int"
      comment = "Nome da coluna na origem: situacao;"
    },
    {
      name    = "situacaoemissor"
      type    = "int"
      comment = "Nome da coluna na origem: situacaoemissor;"
    },
    {
      name    = "bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: bandeira;"
    },
    {
      name    = "mti"
      type    = "string"
      comment = "Nome da coluna na origem: mti;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "tipotransacao"
      type    = "string"
      comment = "Nome da coluna na origem: tipotransacao;"
    },
    {
      name    = "modalidadeparcelamento"
      type    = "string"
      comment = "Nome da coluna na origem: modalidadeparcelamento;"
    },
    {
      name    = "numerototalparcela"
      type    = "string"
      comment = "Nome da coluna na origem: numerototalparcela;"
    },
    {
      name    = "dataliquidacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataliquidacao;"
    },
    {
      name    = "datainclusao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datainclusao;"
    },
    {
      name    = "trn_vinculada"
      type    = "bigint"
      comment = "Nome da coluna na origem: trn_vinculada;"
    },
    {
      name    = "dataliquidacaooriginal"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataliquidacaooriginal;"
    },
    {
      name    = "fk_emissor"
      type    = "int"
      comment = "Nome da coluna na origem: fk_emissor;"
    },
    {
      name    = "empresa"
      type    = "bigint"
      comment = "Nome da coluna na origem: empresa;"
    },
    {
      name    = "autorizacao"
      type    = "string"
      comment = "Nome da coluna na origem: autorizacao;"
    },
    {
      name    = "nsu_host"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_host;"
    },
    {
      name    = "pan_visivel"
      type    = "string"
      comment = "Nome da coluna na origem: pan_visivel;"
    },
    {
      name    = "valororiginal"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valororiginal;"
    },
    {
      name    = "valortotal"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valortotal;"
    },
    {
      name    = "cancelada"
      type    = "boolean"
      comment = "Nome da coluna na origem: cancelada;"
    },
    {
      name    = "valorintercambio"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valorintercambio;"
    },
    {
      name    = "aliquotaintercambio"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: aliquotaintercambio;"
    },
    {
      name    = "datavencimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datavencimento;"
    },
    {
      name    = "forma_captura"
      type    = "string"
      comment = "Nome da coluna na origem: forma_captura;"
    },
    {
      name    = "fallback"
      type    = "string"
      comment = "Nome da coluna na origem: fallback;"
    },
    {
      name    = "custo"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: custo;"
    },
    {
      name    = "valorintercambiogr"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valorintercambiogr;"
    },
    {
      name    = "aliquotaintercambiogr"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: aliquotaintercambiogr;"
    },
    {
      name    = "aid_cartao"
      type    = "string"
      comment = "Nome da coluna na origem: aid_cartao;"
    },
    {
      name    = "pan_cripto"
      type    = "string"
      comment = "Nome da coluna na origem: pan_cripto;"
    },
    {
      name    = "nsu_rede"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_rede;"
    }
  ]
}

module "tb_transacao_taxa" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_transacao_taxa"
  database_name          = "db_trusted_granito_base_2"
  description            = "db_trusted_granito_base_2.tb_transacao_taxa"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_granito_base_2/tb_transacao_taxa/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "fk_idtransacaostatus"
      type    = "bigint"
      comment = "Nome da coluna na origem: fk_idtransacaostatus;"
    },
    {
      name    = "datainclusao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datainclusao;"
    },
    {
      name    = "tipopessoa"
      type    = "string"
      comment = "Nome da coluna na origem: tipopessoa;"
    },
    {
      name    = "fk_mcc"
      type    = "int"
      comment = "Nome da coluna na origem: fk_mcc;"
    },
    {
      name    = "grupopadrao"
      type    = "int"
      comment = "Nome da coluna na origem: grupopadrao;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "codigotaxa"
      type    = "string"
      comment = "Nome da coluna na origem: codigotaxa;"
    },
    {
      name    = "descricaotaxa"
      type    = "string"
      comment = "Nome da coluna na origem: descricaotaxa;"
    },
    {
      name    = "taxaproduto"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxaproduto;"
    },
    {
      name    = "tetoproduto"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: tetoproduto;"
    },
    {
      name    = "tarifaproduto"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: tarifaproduto;"
    },
    {
      name    = "tarifaadicional"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: tarifaadicional;"
    },
    {
      name    = "custo"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: custo;"
    },
    {
      name    = "dataprocessamento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dataprocessamento;"
    },
    {
      name    = "processorid"
      type    = "int"
      comment = "Nome da coluna na origem: processorid;"
    },
    {
      name    = "fk_idjanela"
      type    = "bigint"
      comment = "Nome da coluna na origem: fk_idjanela;"
    },
    {
      name    = "datavencimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datavencimento;"
    },
    {
      name    = "fileid"
      type    = "string"
      comment = "Nome da coluna na origem: fileid;"
    },
    {
      name    = "direcao"
      type    = "string"
      comment = "Nome da coluna na origem: direcao;"
    },
    {
      name    = "acaofinanceira"
      type    = "string"
      comment = "Nome da coluna na origem: acaofinanceira;"
    },
    {
      name    = "cardprogramidentifier"
      type    = "string"
      comment = "Nome da coluna na origem: cardprogramidentifier;"
    },
    {
      name    = "businessservicearrangementtype"
      type    = "string"
      comment = "Nome da coluna na origem: businessservicearrangementtype;"
    },
    {
      name    = "businessserviceidcode"
      type    = "string"
      comment = "Nome da coluna na origem: businessserviceidcode;"
    },
    {
      name    = "serviceidcode"
      type    = "string"
      comment = "Nome da coluna na origem: serviceidcode;"
    }
  ]
}

module "tb_contrato" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_contrato"
  database_name          = "db_trusted_granito_club"
  description            = "db_trusted_granito_club.tb_contrato"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_granito_club/tb_contrato/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "merchantid"
      type    = "bigint"
      comment = "Nome da coluna na origem: merchantid;"
    },
    {
      name    = "contractdate"
      type    = "timestamp"
      comment = "Nome da coluna na origem: contractdate;"
    },
    {
      name    = "duedate"
      type    = "timestamp"
      comment = "Nome da coluna na origem: duedate;"
    },
    {
      name    = "pricetableid"
      type    = "int"
      comment = "Nome da coluna na origem: pricetableid;"
    },
    {
      name    = "activatedate"
      type    = "timestamp"
      comment = "Nome da coluna na origem: activatedate;"
    },
    {
      name    = "cancellationdate"
      type    = "timestamp"
      comment = "Nome da coluna na origem: cancellationdate;"
    },
    {
      name    = "creatat"
      type    = "timestamp"
      comment = "Nome da coluna na origem: creatat;"
    },
    {
      name    = "updateat"
      type    = "timestamp"
      comment = "Nome da coluna na origem: updateat;"
    }
  ]
}

module "tb_transacao" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_transacao"
  database_name          = "db_trusted_pago_ecommerce"
  description            = "db_trusted_pago_ecommerce.tb_transacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_ecommerce/tb_transacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "idcliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: idcliente;"
    },
    {
      name    = "nometitular"
      type    = "string"
      comment = "Nome da coluna na origem: nometitular;"
    },
    {
      name    = "cartao"
      type    = "string"
      comment = "Nome da coluna na origem: cartao;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "numparcelas"
      type    = "int"
      comment = "Nome da coluna na origem: numparcelas;"
    },
    {
      name    = "idtransacaoadquirente"
      type    = "string"
      comment = "Nome da coluna na origem: idtransacaoadquirente;"
    },
    {
      name    = "nsu"
      type    = "string"
      comment = "Nome da coluna na origem: nsu;"
    },
    {
      name    = "status"
      type    = "string"
      comment = "Nome da coluna na origem: status;"
    },
    {
      name    = "dsresponse"
      type    = "string"
      comment = "Nome da coluna na origem: dsresponse;"
    },
    {
      name    = "codautorizacao"
      type    = "string"
      comment = "Nome da coluna na origem: codautorizacao;"
    },
    {
      name    = "dscardcountry"
      type    = "int"
      comment = "Nome da coluna na origem: dscardcountry;"
    },
    {
      name    = "dthrtransacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dthrtransacao;"
    },
    {
      name    = "email"
      type    = "string"
      comment = "Nome da coluna na origem: email;"
    },
    {
      name    = "datanascimento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datanascimento;"
    },
    {
      name    = "cpfcnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cpfcnpj;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "int"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "complemento"
      type    = "string"
      comment = "Nome da coluna na origem: complemento;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "cidade"
      type    = "string"
      comment = "Nome da coluna na origem: cidade;"
    },
    {
      name    = "uf"
      type    = "string"
      comment = "Nome da coluna na origem: uf;"
    },
    {
      name    = "aprovadoantifraude"
      type    = "boolean"
      comment = "Nome da coluna na origem: aprovadoantifraude;"
    },
    {
      name    = "cancelado"
      type    = "boolean"
      comment = "Nome da coluna na origem: cancelado;"
    },
    {
      name    = "datacancelamento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: datacancelamento;"
    },
    {
      name    = "nsucancelamento"
      type    = "string"
      comment = "Nome da coluna na origem: nsucancelamento;"
    },
    {
      name    = "statuscancelamento"
      type    = "string"
      comment = "Nome da coluna na origem: statuscancelamento;"
    },
    {
      name    = "dsresponsecancelamento"
      type    = "string"
      comment = "Nome da coluna na origem: dsresponsecancelamento;"
    },
    {
      name    = "paymentid"
      type    = "string"
      comment = "Nome da coluna na origem: paymentid;"
    }
  ]
}

module "tb_agenda_financeira2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_agenda_financeira"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_agenda_financeira"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_agenda_financeira/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_agenda_financeira"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_agenda_financeira;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "data"
      type    = "date"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "data_envio_banco"
      type    = "date"
      comment = "Nome da coluna na origem: data_envio_banco;"
    },
    {
      name    = "id_transacao"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_transacao;"
    },
    {
      name    = "data_transacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_transacao;"
    },
    {
      name    = "tipo_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: tipo_transacao;"
    },
    {
      name    = "qtde_parcelas"
      type    = "int"
      comment = "Nome da coluna na origem: qtde_parcelas;"
    },
    {
      name    = "num_parcela"
      type    = "int"
      comment = "Nome da coluna na origem: num_parcela;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "valor_pago"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_pago;"
    },
    {
      name    = "taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa;"
    },
    {
      name    = "taxa_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa_antecipacao;"
    },
    {
      name    = "id_transacao_vinculada"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_transacao_vinculada;"
    },
    {
      name    = "id_bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira;"
    },
    {
      name    = "tipo_transacao_original"
      type    = "int"
      comment = "Nome da coluna na origem: tipo_transacao_original;"
    },
    {
      name    = "taxa_base_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa_base_antecipacao;"
    },
    {
      name    = "id_processo_pagamento_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_processo_pagamento_cliente;"
    },
    {
      name    = "processado"
      type    = "boolean"
      comment = "Nome da coluna na origem: processado;"
    },
    {
      name    = "valor_taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_taxa;"
    },
    {
      name    = "valor_taxa_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_taxa_antecipacao;"
    },
    {
      name    = "valor_total"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total;"
    },
    {
      name    = "valor_total_pago"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total_pago;"
    },
    {
      name    = "id_adquirente"
      type    = "int"
      comment = "Nome da coluna na origem: id_adquirente;"
    },
    {
      name    = "pdv"
      type    = "string"
      comment = "Nome da coluna na origem: pdv;"
    },
    {
      name    = "lucro_taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: lucro_taxa;"
    },
    {
      name    = "valor_total_taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total_taxa;"
    },
    {
      name    = "valor_total_taxa_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total_taxa_antecipacao;"
    },
    {
      name    = "origem_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: origem_transacao;"
    },
    {
      name    = "chip_senha"
      type    = "boolean"
      comment = "Nome da coluna na origem: chip_senha;"
    },
    {
      name    = "id_status_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_transacao;"
    },
    {
      name    = "data_lancamento_original"
      type    = "date"
      comment = "Nome da coluna na origem: data_lancamento_original;"
    },
    {
      name    = "iof"
      type    = "decimal(10,2)"
      comment = "Nome da coluna na origem: iof;"
    },
    {
      name    = "cod_simulacao_antecipacao"
      type    = "bigint"
      comment = "Nome da coluna na origem: cod_simulacao_antecipacao;"
    },
    {
      name    = "id_cliente_original"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente_original;"
    },
    {
      name    = "data_insercao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_insercao;"
    },
    {
      name    = "valor_taxa_adm_parceiro"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_taxa_adm_parceiro;"
    },
    {
      name    = "valor_imposto"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_imposto;"
    },
    {
      name    = "valor_margem_parceiro"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_margem_parceiro;"
    },
    {
      name    = "valor_trava_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_trava_antecipacao;"
    },
    {
      name    = "valor_intercambio"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_intercambio;"
    },
  ]
}

module "tb_banco2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_banco"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_banco"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_banco/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_banco"
      type    = "int"
      comment = "Nome da coluna na origem: id_banco;"
    },
    {
      name    = "desc_banco"
      type    = "string"
      comment = "Nome da coluna na origem: desc_banco;"
    },
    {
      name    = "cod_banco"
      type    = "string"
      comment = "Nome da coluna na origem: cod_banco;"
    },
    {
      name    = "ativo"
      type    = "int"
      comment = "Nome da coluna na origem: ativo;"
    },
    {
      name    = "dias_atraso_pagto"
      type    = "int"
      comment = "Nome da coluna na origem: dias_atraso_pagto;"
    },
    {
      name    = "ispb"
      type    = "string"
      comment = "Nome da coluna na origem: ispb;"
    },
  ]
}

module "tb_bandeira2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_bandeira"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_bandeira"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_bandeira/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira;"
    },
    {
      name    = "desc_bandeira"
      type    = "string"
      comment = "Nome da coluna na origem: desc_bandeira;"
    },
    {
      name    = "id_bandeira_servidor"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira_servidor;"
    },
    {
      name    = "id_modalidade"
      type    = "int"
      comment = "Nome da coluna na origem: id_modalidade;"
    },
    {
      name    = "ativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: ativo;"
    },
    {
      name    = "img"
      type    = "string"
      comment = "Nome da coluna na origem: img;"
    },
    {
      name    = "grupo_bandeira"
      type    = "string"
      comment = "Nome da coluna na origem: grupo_bandeira;"
    },
    {
      name    = "cod_instidr_arrj_pagto"
      type    = "string"
      comment = "Nome da coluna na origem: cod_instidr_arrj_pagto;"
    },
    {
      name    = "cod_cerc"
      type    = "string"
      comment = "Nome da coluna na origem: cod_cerc;"
    },
  ]
}

module "tb_cidade2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cidade"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_cidade"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_cidade/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cidade"
      type    = "int"
      comment = "Nome da coluna na origem: id_cidade;"
    },
    {
      name    = "desc_cidade"
      type    = "string"
      comment = "Nome da coluna na origem: desc_cidade;"
    },
    {
      name    = "id_estado"
      type    = "int"
      comment = "Nome da coluna na origem: id_estado;"
    },
    {
      name    = "zona_franca"
      type    = "boolean"
      comment = "Nome da coluna na origem: zona_franca;"
    }
  ]
}

module "tb_cliente2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cliente"
  database_name          = "db_trusted_pago_portal"
  description            = "O cliente é qualquer pessoa física ou jurídica que contrata e utiliza os serviços de processamento de pagamentos fornecidos pela empresa. "
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_cliente/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "cpf_cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cpf_cnpj;"
    },
    {
      name    = "razao"
      type    = "string"
      comment = "Nome da coluna na origem: razao;"
    },
    {
      name    = "fantasia"
      type    = "string"
      comment = "Nome da coluna na origem: fantasia;"
    },
    {
      name    = "id_cnae"
      type    = "int"
      comment = "Nome da coluna na origem: id_cnae;"
    },
    {
      name    = "id_projeto"
      type    = "int"
      comment = "Nome da coluna na origem: id_projeto;"
    },
    {
      name    = "id_plano"
      type    = "int"
      comment = "Nome da coluna na origem: id_plano;"
    },
    {
      name    = "qtd_equipamento"
      type    = "int"
      comment = "Nome da coluna na origem: qtd_equipamento;"
    },
    {
      name    = "id_banco"
      type    = "int"
      comment = "Nome da coluna na origem: id_banco;"
    },
    {
      name    = "agencia"
      type    = "string"
      comment = "Nome da coluna na origem: agencia;"
    },
    {
      name    = "conta"
      type    = "string"
      comment = "Nome da coluna na origem: conta;"
    },
    {
      name    = "id_status"
      type    = "int"
      comment = "Nome da coluna na origem: id_status;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "id_grupo"
      type    = "int"
      comment = "Nome da coluna na origem: id_grupo;"
    },
    {
      name    = "inscricao_estadual"
      type    = "string"
      comment = "Nome da coluna na origem: inscricao_estadual;"
    },
    {
      name    = "senha_config"
      type    = "string"
      comment = "Nome da coluna na origem: senha_config;"
    },
    {
      name    = "antecipacao"
      type    = "boolean"
      comment = "Nome da coluna na origem: antecipacao;"
    },
    {
      name    = "agencia_dv"
      type    = "string"
      comment = "Nome da coluna na origem: agencia_dv;"
    },
    {
      name    = "id_operacao_caixa"
      type    = "int"
      comment = "Nome da coluna na origem: id_operacao_caixa;"
    },
    {
      name    = "id_ramo_atividade_pf"
      type    = "int"
      comment = "Nome da coluna na origem: id_ramo_atividade_pf;"
    },
    {
      name    = "nome_proprietario"
      type    = "string"
      comment = "Nome da coluna na origem: nome_proprietario;"
    },
    {
      name    = "cpf_proprietario"
      type    = "string"
      comment = "Nome da coluna na origem: cpf_proprietario;"
    },
    {
      name    = "data_configuracao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_configuracao;"
    },
    {
      name    = "id_segmento_inicial"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento_inicial;"
    },
    {
      name    = "id_segmento_atual"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento_atual;"
    },
    {
      name    = "split"
      type    = "boolean"
      comment = "Nome da coluna na origem: split;"
    },
    {
      name    = "id_fluxo"
      type    = "int"
      comment = "Nome da coluna na origem: id_fluxo;"
    },
    {
      name    = "poupanca"
      type    = "boolean"
      comment = "Nome da coluna na origem: poupanca;"
    },
    {
      name    = "id_plano_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: id_plano_pagamento;"
    },
    {
      name    = "id_taxa_antecipacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_taxa_antecipacao;"
    },
    {
      name    = "multicliente"
      type    = "boolean"
      comment = "Nome da coluna na origem: multicliente;"
    },
    {
      name    = "recorrente"
      type    = "boolean"
      comment = "Nome da coluna na origem: recorrente;"
    },
    {
      name    = "ecommerce"
      type    = "boolean"
      comment = "Nome da coluna na origem: ecommerce;"
    },
    {
      name    = "bloquear_pagamento"
      type    = "boolean"
      comment = "Nome da coluna na origem: bloquear_pagamento;"
    },
    {
      name    = "id_tipo_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_pagamento;"
    },
    {
      name    = "num_dias_antecipacao"
      type    = "int"
      comment = "Nome da coluna na origem: num_dias_antecipacao;"
    },
    {
      name    = "taxa_antecipacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa_antecipacao;"
    },
    {
      name    = "bloqueio_antecipacao"
      type    = "boolean"
      comment = "Nome da coluna na origem: bloqueio_antecipacao;"
    },
    {
      name    = "etapa_cadastro"
      type    = "int"
      comment = "Nome da coluna na origem: etapa_cadastro;"
    },
    {
      name    = "multiplo"
      type    = "boolean"
      comment = "Nome da coluna na origem: multiplo;"
    },
    {
      name    = "percentual_antecipacao_chip_senha"
      type    = "int"
      comment = "Nome da coluna na origem: percentual_antecipacao_chip_senha;"
    },
    {
      name    = "percentual_antecipacao_nao_chip_senha"
      type    = "int"
      comment = "Nome da coluna na origem: percentual_antecipacao_nao_chip_senha;"
    },
    {
      name    = "id_tipo_cobranca"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_cobranca;"
    },
    {
      name    = "pagamento_ted"
      type    = "boolean"
      comment = "Nome da coluna na origem: pagamento_ted;"
    },
    {
      name    = "id_status_cadastro"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_cadastro;"
    },
    {
      name    = "id_valida_conta"
      type    = "boolean"
      comment = "Nome da coluna na origem: id_valida_conta;"
    },
    {
      name    = "id_tipo_antecipacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_antecipacao;"
    },
    {
      name    = "data_ativacao_primeiro_pdv"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_ativacao_primeiro_pdv;"
    },
    {
      name    = "data_cadastro"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_cadastro;"
    },
    {
      name    = "cobranca_chip"
      type    = "boolean"
      comment = "Nome da coluna na origem: cobranca_chip;"
    },
    {
      name    = "faturamento"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: faturamento;"
    }
  ]
}

module "tb_cnae2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cnae"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_cnae"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_cnae/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cnae"
      type    = "int"
      comment = "Nome da coluna na origem: id_cnae;"
    },
    {
      name    = "desc_cnae"
      type    = "string"
      comment = "Nome da coluna na origem: desc_cnae;"
    },
    {
      name    = "cod_cnae"
      type    = "string"
      comment = "Nome da coluna na origem: cod_cnae;"
    },
    {
      name    = "mcc"
      type    = "int"
      comment = "Nome da coluna na origem: mcc;"
    },
    {
      name    = "id_segmento"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento;"
    },
    {
      name    = "adm"
      type    = "boolean"
      comment = "Nome da coluna na origem: adm;"
    },
    {
      name    = "restrito"
      type    = "boolean"
      comment = "Nome da coluna na origem: restrito;"
    },
    {
      name    = "proibido"
      type    = "boolean"
      comment = "Nome da coluna na origem: proibido;"
    },
    {
      name    = "permissao_link_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: permissao_link_pagamento;"
    },
    {
      name    = "id_chave_konduto"
      type    = "int"
      comment = "Nome da coluna na origem: id_chave_konduto;"
    }
  ]
}

module "tb_cobranca_agenda2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cobranca_agenda"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_cobranca_agenda"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_cobranca_agenda/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cobranca_agenda"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cobranca_agenda;"
    },
    {
      name    = "id_cliente"
      type    = "int"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_tipo_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_transacao;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "data_cadastro"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_cadastro;"
    },
    {
      name    = "valor_total"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_total;"
    },
    {
      name    = "data_inicio_cobranca"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_inicio_cobranca;"
    },
    {
      name    = "quantidade_parcelas"
      type    = "int"
      comment = "Nome da coluna na origem: quantidade_parcelas;"
    },
    {
      name    = "id_pedido"
      type    = "int"
      comment = "Nome da coluna na origem: id_pedido;"
    },
  ]
}

module "tb_cobranca_agenda_parcela" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cobranca_agenda_parcela"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_cobranca_agenda_parcela"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_cobranca_agenda_parcela/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cobranca_agenda_parcelas"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cobranca_agenda_parcelas;"
    },
    {
      name    = "id_cobranca_agenda"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cobranca_agenda;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "data"
      type    = "date"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "parcela_numero"
      type    = "int"
      comment = "Nome da coluna na origem: parcela_numero;"
    },
  ]
}

module "tb_cobranca_agenda_parcela_situacao" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_cobranca_agenda_parcela_situacao"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_cobranca_agenda_parcela_situacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_cobranca_agenda_parcela_situacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cobranca_parcelas_situacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_cobranca_parcelas_situacao;"
    },
    {
      name    = "id_cobranca_agenda_parcelas"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cobranca_agenda_parcelas;"
    },
    {
      name    = "id_status_cobranca_agenda"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_cobranca_agenda;"
    },
    {
      name    = "id_agenda_financeira"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_agenda_financeira;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "descricao"
      type    = "string"
      comment = "Nome da coluna na origem: descricao;"
    },
  ]
}

module "tb_custo_antecipacao_remuneracao_parceiro" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_custo_antecipacao_remuneracao_parceiro"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_custo_antecipacao_remuneracao_parceiro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_custo_antecipacao_remuneracao_parceiro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_segmento"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento;"
    },
    {
      name    = "custo"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: custo;"
    }
  ]
}

module "tb_custo_remuneracao_parceiro" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_custo_remuneracao_parceiro"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_custo_remuneracao_parceiro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_custo_remuneracao_parceiro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_segmento"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento;"
    },
    {
      name    = "id_bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira;"
    },
    {
      name    = "parcela_min"
      type    = "int"
      comment = "Nome da coluna na origem: parcela_min;"
    },
    {
      name    = "parcela_max"
      type    = "int"
      comment = "Nome da coluna na origem: parcela_max;"
    },
    {
      name    = "custo"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: custo;"
    },
  ]
}

module "tb_endereco2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_endereco"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_endereco"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_endereco/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_tipo_endereco"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_endereco;"
    },
    {
      name    = "destinatario"
      type    = "string"
      comment = "Nome da coluna na origem: destinatario;"
    },
    {
      name    = "cep"
      type    = "string"
      comment = "Nome da coluna na origem: cep;"
    },
    {
      name    = "logradouro"
      type    = "string"
      comment = "Nome da coluna na origem: logradouro;"
    },
    {
      name    = "numero"
      type    = "int"
      comment = "Nome da coluna na origem: numero;"
    },
    {
      name    = "complemento"
      type    = "string"
      comment = "Nome da coluna na origem: complemento;"
    },
    {
      name    = "bairro"
      type    = "string"
      comment = "Nome da coluna na origem: bairro;"
    },
    {
      name    = "id_cidade"
      type    = "int"
      comment = "Nome da coluna na origem: id_cidade;"
    }
  ]
}

module "tb_log2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_log"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_log"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_log/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_pedido"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_pedido;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "log"
      type    = "string"
      comment = "Nome da coluna na origem: log;"
    },
    {
      name    = "arquivo"
      type    = "boolean"
      comment = "Nome da coluna na origem: arquivo;"
    },
  ]
}

module "tb_parceiro2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_parceiro"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_parceiro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_parceiro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_parceiro_pai"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro_pai;"
    },
    {
      name    = "cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cnpj;"
    },
    {
      name    = "razao"
      type    = "string"
      comment = "Nome da coluna na origem: razao;"
    },
    {
      name    = "fantasia"
      type    = "string"
      comment = "Nome da coluna na origem: fantasia;"
    },
    {
      name    = "id_banco"
      type    = "int"
      comment = "Nome da coluna na origem: id_banco;"
    },
    {
      name    = "agencia"
      type    = "string"
      comment = "Nome da coluna na origem: agencia;"
    },
    {
      name    = "conta"
      type    = "string"
      comment = "Nome da coluna na origem: conta;"
    },
    {
      name    = "id_status"
      type    = "int"
      comment = "Nome da coluna na origem: id_status;"
    },
    {
      name    = "agencia_dv"
      type    = "int"
      comment = "Nome da coluna na origem: agencia_dv;"
    },
    {
      name    = "inscricao_estadual"
      type    = "string"
      comment = "Nome da coluna na origem: inscricao_estadual;"
    },
    {
      name    = "poupanca"
      type    = "boolean"
      comment = "Nome da coluna na origem: poupanca;"
    },
    {
      name    = "id_operacao_caixa"
      type    = "int"
      comment = "Nome da coluna na origem: id_operacao_caixa;"
    },
    {
      name    = "url"
      type    = "int"
      comment = "Nome da coluna na origem: url;"
    },
    {
      name    = "perfil_cliente"
      type    = "int"
      comment = "Nome da coluna na origem: perfil_cliente;"
    },
    {
      name    = "cod_bmg"
      type    = "bigint"
      comment = "Nome da coluna na origem: cod_bmg;"
    },
    {
      name    = "id_usuario_gestor"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario_gestor;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "calcular_remuneracao"
      type    = "boolean"
      comment = "Nome da coluna na origem: calcular_remuneracao;"
    },
    {
      name    = "cobrar_cliente_nao_vinculado"
      type    = "boolean"
      comment = "Nome da coluna na origem: cobrar_cliente_nao_vinculado;"
    }
  ]
}

module "tb_parceiro_configuracao" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_parceiro_configuracao"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_parceiro_configuracao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_parceiro_configuracao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "chave"
      type    = "string"
      comment = "Nome da coluna na origem: chave;"
    },
    {
      name    = "valor"
      type    = "string"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "data_criacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_criacao;"
    },
    {
      name    = "ultima_atualizacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: ultima_atualizacao;"
    },
    {
      name    = "ativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: ativo;"
    },
  ]
}

module "tb_pdv2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_pdv"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_pdv"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_pdv/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "numero_pdv"
      type    = "int"
      comment = "Nome da coluna na origem: numero_pdv;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "versao_bin"
      type    = "string"
      comment = "Nome da coluna na origem: versao_bin;"
    },
    {
      name    = "versao_img"
      type    = "string"
      comment = "Nome da coluna na origem: versao_img;"
    },
    {
      name    = "serial"
      type    = "string"
      comment = "Nome da coluna na origem: serial;"
    },
    {
      name    = "sim_card"
      type    = "string"
      comment = "Nome da coluna na origem: sim_card;"
    },
    {
      name    = "nome_comprovante"
      type    = "string"
      comment = "Nome da coluna na origem: nome_comprovante;"
    },
    {
      name    = "ativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: ativo;"
    },
    {
      name    = "data_ativacao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_ativacao;"
    },
    {
      name    = "senha"
      type    = "string"
      comment = "Nome da coluna na origem: senha;"
    }
  ]
}

module "tb_pedido2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_pedido"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_pedido"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_pedido/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_pedido"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_pedido;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_tipo_pedido"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_pedido;"
    },
    {
      name    = "id_status"
      type    = "int"
      comment = "Nome da coluna na origem: id_status;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "id_pedido_caixa"
      type    = "string"
      comment = "Nome da coluna na origem: id_pedido_caixa;"
    },
    {
      name    = "id_pedido_pax"
      type    = "string"
      comment = "Nome da coluna na origem: id_pedido_pax;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "qtd_equipamentos"
      type    = "int"
      comment = "Nome da coluna na origem: qtd_equipamentos;"
    },
    {
      name    = "id_usuario_gmp"
      type    = "int"
      comment = "Nome da coluna na origem: id_usuario_gmp;"
    },
    {
      name    = "id_status_pedido"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_pedido;"
    },
    {
      name    = "id_pedido_complementar"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_pedido_complementar;"
    },
    {
      name    = "data_configuracao"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_configuracao;"
    },
    {
      name    = "id_metodo_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: id_metodo_pagamento;"
    },
    {
      name    = "valor_faturamento"
      type    = "decimal(12,2)"
      comment = "Nome da coluna na origem: valor_faturamento;"
    },
    {
      name    = "data_faturamento"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data_faturamento;"
    }
  ]
}

module "tb_processo_pagamento_cliente2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_processo_pagamento_cliente"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_processo_pagamento_cliente"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_processo_pagamento_cliente/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_processo_pagamento_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_processo_pagamento_cliente;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "data_envio_banco"
      type    = "date"
      comment = "Nome da coluna na origem: data_envio_banco;"
    },
    {
      name    = "id_status_processo_pagamento"
      type    = "int"
      comment = "Nome da coluna na origem: id_status_processo_pagamento;"
    },
    {
      name    = "tipo_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: tipo_transacao;"
    },
    {
      name    = "id_bandeira"
      type    = "int"
      comment = "Nome da coluna na origem: id_bandeira;"
    },
    {
      name    = "id_processo_relacionado"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_processo_relacionado;"
    },
    {
      name    = "id_ultimo_pagamento_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_ultimo_pagamento_cliente;"
    }
  ]
}

module "tb_remuneracao_transacao_parceiro2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_remuneracao_transacao_parceiro"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_remuneracao_transacao_parceiro"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_remuneracao_transacao_parceiro/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_agenda_financeira"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_agenda_financeira;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "tipo_remuneracao"
      type    = "int"
      comment = "Nome da coluna na origem: tipo_remuneracao;"
    },
    {
      name    = "base_remuneracao"
      type    = "int"
      comment = "Nome da coluna na origem: base_remuneracao;"
    },
    {
      name    = "parceiro_pai"
      type    = "boolean"
      comment = "Nome da coluna na origem: parceiro_pai;"
    },
    {
      name    = "divide_custo"
      type    = "boolean"
      comment = "Nome da coluna na origem: divide_custo;"
    },
    {
      name    = "custo_transacao"
      type    = "decimal(12,2)"
      comment = "Nome da coluna na origem: custo_transacao;"
    },
    {
      name    = "imposto_transacao"
      type    = "decimal(6,4)"
      comment = "Nome da coluna na origem: imposto_transacao;"
    },
    {
      name    = "percentual_transacao"
      type    = "decimal(4,2)"
      comment = "Nome da coluna na origem: percentual_transacao;"
    },
    {
      name    = "remuneracao_transacao"
      type    = "decimal(12,3)"
      comment = "Nome da coluna na origem: remuneracao_transacao;"
    },
    {
      name    = "custo_antecipacao"
      type    = "decimal(12,2)"
      comment = "Nome da coluna na origem: custo_antecipacao;"
    },
    {
      name    = "imposto_antecipacao"
      type    = "decimal(6,4)"
      comment = "Nome da coluna na origem: imposto_antecipacao;"
    },
    {
      name    = "percentual_antecipacao"
      type    = "decimal(4,2)"
      comment = "Nome da coluna na origem: percentual_antecipacao;"
    },
    {
      name    = "remuneracao_antecipacao"
      type    = "decimal(12,3)"
      comment = "Nome da coluna na origem: remuneracao_antecipacao;"
    }
  ]
}

module "tb_segmento2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_segmento"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_segmento"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_segmento/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_segmento"
      type    = "int"
      comment = "Nome da coluna na origem: id_segmento;"
    },
    {
      name    = "desc_segmento"
      type    = "string"
      comment = "Nome da coluna na origem: desc_segmento;"
    },
    {
      name    = "ativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: ativo;"
    }
  ]
}

module "tb_transacao2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_transacao"
  database_name          = "db_trusted_pago_srv"
  description            = "db_trusted_pago_srv.tb_transacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_srv/tb_transacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id"
      type    = "bigint"
      comment = "Nome da coluna na origem: id;"
    },
    {
      name    = "empresa"
      type    = "bigint"
      comment = "Nome da coluna na origem: empresa;"
    },
    {
      name    = "pdv"
      type    = "string"
      comment = "Nome da coluna na origem: pdv;"
    },
    {
      name    = "rede"
      type    = "string"
      comment = "Nome da coluna na origem: rede;"
    },
    {
      name    = "bandeira"
      type    = "string"
      comment = "Nome da coluna na origem: bandeira;"
    },
    {
      name    = "numero_logico"
      type    = "string"
      comment = "Nome da coluna na origem: numero_logico;"
    },
    {
      name    = "terminal"
      type    = "string"
      comment = "Nome da coluna na origem: terminal;"
    },
    {
      name    = "versao_cliente"
      type    = "string"
      comment = "Nome da coluna na origem: versao_cliente;"
    },
    {
      name    = "moeda"
      type    = "string"
      comment = "Nome da coluna na origem: moeda;"
    },
    {
      name    = "codigo_pais"
      type    = "string"
      comment = "Nome da coluna na origem: codigo_pais;"
    },
    {
      name    = "dthr_server"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dthr_server;"
    },
    {
      name    = "dthr_client"
      type    = "timestamp"
      comment = "Nome da coluna na origem: dthr_client;"
    },
    {
      name    = "dthr_gmt"
      type    = "string"
      comment = "Nome da coluna na origem: dthr_gmt;"
    },
    {
      name    = "dt_local"
      type    = "string"
      comment = "Nome da coluna na origem: dt_local;"
    },
    {
      name    = "hr_local"
      type    = "string"
      comment = "Nome da coluna na origem: hr_local;"
    },
    {
      name    = "mti"
      type    = "string"
      comment = "Nome da coluna na origem: mti;"
    },
    {
      name    = "pan_visivel"
      type    = "string"
      comment = "Nome da coluna na origem: pan_visivel;"
    },
    {
      name    = "valor"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor;"
    },
    {
      name    = "nsu_pdv"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_pdv;"
    },
    {
      name    = "nsu_host"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_host;"
    },
    {
      name    = "autorizacao"
      type    = "string"
      comment = "Nome da coluna na origem: autorizacao;"
    },
    {
      name    = "autorizacao_pago"
      type    = "string"
      comment = "Nome da coluna na origem: autorizacao_pago;"
    },
    {
      name    = "resposta"
      type    = "string"
      comment = "Nome da coluna na origem: resposta;"
    },
    {
      name    = "tipo_transacao"
      type    = "string"
      comment = "Nome da coluna na origem: tipo_transacao;"
    },
    {
      name    = "forma_captura"
      type    = "string"
      comment = "Nome da coluna na origem: forma_captura;"
    },
    {
      name    = "forma_pagamento"
      type    = "string"
      comment = "Nome da coluna na origem: forma_pagamento;"
    },
    {
      name    = "modalidade_parcelamento"
      type    = "string"
      comment = "Nome da coluna na origem: modalidade_parcelamento;"
    },
    {
      name    = "parcelas"
      type    = "string"
      comment = "Nome da coluna na origem: parcelas;"
    },
    {
      name    = "ns_pinpad"
      type    = "string"
      comment = "Nome da coluna na origem: ns_pinpad;"
    },
    {
      name    = "sw_basico"
      type    = "string"
      comment = "Nome da coluna na origem: sw_basico;"
    },
    {
      name    = "versao_bc"
      type    = "string"
      comment = "Nome da coluna na origem: versao_bc;"
    },
    {
      name    = "fabricante_pp"
      type    = "string"
      comment = "Nome da coluna na origem: fabricante_pp;"
    },
    {
      name    = "modelo_pp"
      type    = "string"
      comment = "Nome da coluna na origem: modelo_pp;"
    },
    {
      name    = "fallback"
      type    = "string"
      comment = "Nome da coluna na origem: fallback;"
    },
    {
      name    = "numero_tentativas"
      type    = "string"
      comment = "Nome da coluna na origem: numero_tentativas;"
    },
    {
      name    = "pin_bloqueado"
      type    = "string"
      comment = "Nome da coluna na origem: pin_bloqueado;"
    },
    {
      name    = "pin_offline"
      type    = "string"
      comment = "Nome da coluna na origem: pin_offline;"
    },
    {
      name    = "pin_online"
      type    = "string"
      comment = "Nome da coluna na origem: pin_online;"
    },
    {
      name    = "assinatura"
      type    = "string"
      comment = "Nome da coluna na origem: assinatura;"
    },
    {
      name    = "arqc"
      type    = "string"
      comment = "Nome da coluna na origem: arqc;"
    },
    {
      name    = "arpc"
      type    = "string"
      comment = "Nome da coluna na origem: arpc;"
    },
    {
      name    = "viacartao"
      type    = "string"
      comment = "Nome da coluna na origem: viacartao;"
    },
    {
      name    = "aid_cartao"
      type    = "string"
      comment = "Nome da coluna na origem: aid_cartao;"
    },
    {
      name    = "app_label"
      type    = "string"
      comment = "Nome da coluna na origem: app_label;"
    },
    {
      name    = "trn_vinculada"
      type    = "bigint"
      comment = "Nome da coluna na origem: trn_vinculada;"
    },
    {
      name    = "status"
      type    = "string"
      comment = "Nome da coluna na origem: status;"
    },
    {
      name    = "num_servidor"
      type    = "int"
      comment = "Nome da coluna na origem: num_servidor;"
    },
    {
      name    = "pan_cripto"
      type    = "string"
      comment = "Nome da coluna na origem: pan_cripto;"
    },
    {
      name    = "trilha_dois"
      type    = "string"
      comment = "Nome da coluna na origem: trilha_dois;"
    },
    {
      name    = "nsu_rede"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_rede;"
    },
    {
      name    = "nsu_aut"
      type    = "string"
      comment = "Nome da coluna na origem: nsu_aut;"
    },
    {
      name    = "aprovada_chip"
      type    = "string"
      comment = "Nome da coluna na origem: aprovada_chip;"
    },
    {
      name    = "tags_emv"
      type    = "string"
      comment = "Nome da coluna na origem: tags_emv;"
    },
    {
      name    = "mcc"
      type    = "string"
      comment = "Nome da coluna na origem: mcc;"
    },
    {
      name    = "dtparcelacrediario"
      type    = "string"
      comment = "Nome da coluna na origem: dtparcelacrediario;"
    },
    {
      name    = "b46"
      type    = "string"
      comment = "Nome da coluna na origem: b46;"
    },
    {
      name    = "b48"
      type    = "string"
      comment = "Nome da coluna na origem: b48;"
    },
    {
      name    = "tags_emvret"
      type    = "string"
      comment = "Nome da coluna na origem: tags_emvret;"
    },
    {
      name    = "m05"
      type    = "string"
      comment = "Nome da coluna na origem: m05;"
    },
    {
      name    = "m06"
      type    = "string"
      comment = "Nome da coluna na origem: m06;"
    },
    {
      name    = "m15"
      type    = "string"
      comment = "Nome da coluna na origem: m15;"
    },
    {
      name    = "m16"
      type    = "string"
      comment = "Nome da coluna na origem: m16;"
    },
    {
      name    = "m63"
      type    = "string"
      comment = "Nome da coluna na origem: m63;"
    },
    {
      name    = "base2"
      type    = "boolean"
      comment = "Nome da coluna na origem: base2;"
    },
    {
      name    = "v61"
      type    = "string"
      comment = "Nome da coluna na origem: v61;"
    },
    {
      name    = "v117"
      type    = "string"
      comment = "Nome da coluna na origem: v117;"
    },
    {
      name    = "v62"
      type    = "string"
      comment = "Nome da coluna na origem: v62;"
    },
    {
      name    = "v63"
      type    = "string"
      comment = "Nome da coluna na origem: v63;"
    },
    {
      name    = "bit43"
      type    = "string"
      comment = "Nome da coluna na origem: bit43;"
    },
    {
      name    = "bit44"
      type    = "string"
      comment = "Nome da coluna na origem: bit44;"
    },
    {
      name    = "bit54"
      type    = "string"
      comment = "Nome da coluna na origem: bit54;"
    }
  ]
}

# tabela sem schemas
# module "tb_pagamento_codigo_qr" {
#   source = "./modules/aws_glue/table"

#   table_name     = "tb_pagamento_codigo_qr"
#   database_name  = "db_trusted_pix_gateway"
#   description    = "db_trusted_pix_gateway.tb_pagamento_codigo_qr"
#   table_type     = "EXTERNAL_TABLE"
#   location       = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pix_gateway/tb_pagamento_codigo_qr/"
#   input_format   = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
#   output_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
#   serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
#   ser_de_info_parameters = {}

#   columns = [
#     {
#       name    = ""
#       type    = ""
#       comment = "Nome da coluna na origem: ;"
#     },
#   ]
# }

module "tb_transacao_recorrente" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_transacao_recorrente"
  database_name          = "db_trusted_rc_gateway"
  description            = "db_trusted_rc_gateway.tb_transacao_recorrente"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_rc_gateway/tb_transacao_recorrente/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "recurrenceid"
      type    = "bigint"
      comment = "Nome da coluna na origem: recurrenceid;"
    },
    {
      name    = "installmentnumber"
      type    = "int"
      comment = "Nome da coluna na origem: installmentnumber;"
    },
    {
      name    = "transactionid"
      type    = "bigint"
      comment = "Nome da coluna na origem: transactionid;"
    },
    {
      name    = "created"
      type    = "timestamp"
      comment = "Nome da coluna na origem: created;"
    },
    {
      name    = "lastupdated"
      type    = "timestamp"
      comment = "Nome da coluna na origem: lastupdated;"
    },
    {
      name    = "active"
      type    = "boolean"
      comment = "Nome da coluna na origem: active;"
    },
    {
      name    = "authorizationcode"
      type    = "string"
      comment = "Nome da coluna na origem: authorizationcode;"
    },
    {
      name    = "proofofsale"
      type    = "string"
      comment = "Nome da coluna na origem: proofofsale;"
    }
  ]
}

module "tb_solicitacao_antecipacao" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_solicitacao_antecipacao"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_solicitacao_antecipacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_solicitacao_antecipacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_solicitacao_antecipacao"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_solicitacao_antecipacao;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "valor_solicitado"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_solicitado;"
    },
    {
      name    = "taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa;"
    },
  ]
}

module "tb_solicitacao_antecipacao2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_solicitacao_antecipacao"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_solicitacao_antecipacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_solicitacao_antecipacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_solicitacao_antecipacao"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_solicitacao_antecipacao;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "data"
      type    = "timestamp"
      comment = "Nome da coluna na origem: data;"
    },
    {
      name    = "valor_solicitado"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_solicitado;"
    },
    {
      name    = "taxa"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: taxa;"
    }
  ]
}

module "tb_tipo_transacao" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_tipo_transacao"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_tipo_transacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_tipo_transacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_tipo_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_transacao;"
    },
    {
      name    = "desc_tipo_transacao"
      type    = "string"
      comment = "Nome da coluna na origem: desc_tipo_transacao;"
    },
    {
      name    = "definicao"
      type    = "string"
      comment = "Nome da coluna na origem: definicao;"
    },
    {
      name    = "visivel_lancamento"
      type    = "boolean"
      comment = "Nome da coluna na origem: visivel_lancamento;"
    },
    {
      name    = "negativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: negativo;"
    },
    {
      name    = "relatorio_lancamentos"
      type    = "boolean"
      comment = "Nome da coluna na origem: relatorio_lancamentos;"
    },
    {
      name    = "id_tipo_transacao_estorno"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_transacao_estorno;"
    },
    {
      name    = "valor_maximo_transacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_maximo_transacao;"
    }
  ]
}

module "tb_tipo_transacao2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_tipo_transacao"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_tipo_transacao"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_tipo_transacao/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_tipo_transacao"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_transacao;"
    },
    {
      name    = "desc_tipo_transacao"
      type    = "string"
      comment = "Nome da coluna na origem: desc_tipo_transacao;"
    },
    {
      name    = "definicao"
      type    = "string"
      comment = "Nome da coluna na origem: definicao;"
    },
    {
      name    = "visivel_lancamento"
      type    = "boolean"
      comment = "Nome da coluna na origem: visivel_lancamento;"
    },
    {
      name    = "negativo"
      type    = "boolean"
      comment = "Nome da coluna na origem: negativo;"
    },
    {
      name    = "relatorio_lancamentos"
      type    = "boolean"
      comment = "Nome da coluna na origem: relatorio_lancamentos;"
    },
    {
      name    = "id_tipo_transacao_estorno"
      type    = "int"
      comment = "Nome da coluna na origem: id_tipo_transacao_estorno;"
    },
    {
      name    = "valor_maximo_transacao"
      type    = "decimal(18,2)"
      comment = "Nome da coluna na origem: valor_maximo_transacao;"
    }
  ]
}

# tabela sem descrição
# module "tbl_appflow_dim_bandeira_1716980348_latest" {
#   source = "./modules/aws_glue/table"

#   table_name     = "tbl_appflow_dim_bandeira_1716980348_latest"
#   database_name  = "db_raw_pago_portal"
#   description    = ""
#   table_type     = "EXTERNAL_TABLE"
#   location       = "s3://ex-grt-aos-spdt-datalake-raw/DIM_BANDEIRA/schemaVersion_2/35555010-1b5b-4ca8-9493-d71c13cf1e10/"
#   input_format   = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
#   output_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
#   serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
#   ser_de_info_parameters = {}

#   columns = [
#     {
#       name    = "id_bandeira"
#       type    = "string"
#       comment = "Nome da coluna na origem: id_bandeira;"
#     },
#     {
#       name    = "nm_bandeira"
#       type    = "string"
#       comment = "Nome da coluna na origem: nm_bandeira;"
#     },
#     {
#       name    = "created_at"
#       type    = "string"
#       comment = "Nome da coluna na origem: created_at;"
#     },
#     {
#       name    = "updated_at"
#       type    = "string"
#       comment = "Nome da coluna na origem: updated_at;"
#     }
#   ]
# }

# tabela sem descrição
# module "tbl_appflow_dim_bandeira_sv2_211f072cf89748439011d18bb4120a99" {
#   source = "./modules/aws_glue/table"

#   table_name     = "tbl_appflow_dim_bandeira_sv2_211f072cf89748439011d18bb4120a99"
#   database_name  = "db_raw_pago_portal"
#   description    = ""
#   table_type     = "EXTERNAL_TABLE"
#   location       = "s3://ex-grt-aos-spdt-datalake-raw/DIM_BANDEIRA/schemaVersion_2/211f072c-f897-4843-9011-d18bb4120a99/"
#   input_format   = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
#   output_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
#   serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
#   ser_de_info_parameters = {}

#   columns = [
#     {
#       name    = "id_bandeira"
#       type    = "string"
#       comment = "Nome da coluna na origem: id_bandeira;"
#     },
#     {
#       name    = "nm_bandeira"
#       type    = "string"
#       comment = "Nome da coluna na origem: nm_bandeira;"
#     },
#     {
#       name    = "created_at"
#       type    = "string"
#       comment = "Nome da coluna na origem: created_at;"
#     },
#     {
#       name    = "updated_at"
#       type    = "string"
#       comment = "Nome da coluna na origem: updated_at;"
#     }
#   ]
# }

# tabela sem descrição
# module "tbl_appflow_dim_bandeira_sv2_355550101b5b4ca89493d71c13cf1e10" {
#   source = "./modules/aws_glue/table"

#   table_name     = "tbl_appflow_dim_bandeira_sv2_355550101b5b4ca89493d71c13cf1e10"
#   database_name  = "db_raw_pago_portal"
#   description    = ""
#   table_type     = "EXTERNAL_TABLE"
#   location       = "s3://ex-grt-aos-spdt-datalake-raw/DIM_BANDEIRA/schemaVersion_2/35555010-1b5b-4ca8-9493-d71c13cf1e10/"
#   input_format   = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
#   output_format  = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
#   serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
#   ser_de_info_parameters = {}

#   columns = [
#     {
#       name    = "id_bandeira"
#       type    = "string"
#       comment = "Nome da coluna na origem: id_bandeira;"
#     },
#     {
#       name    = "nm_bandeira"
#       type    = "string"
#       comment = "Nome da coluna na origem: nm_bandeira;"
#     },
#     {
#       name    = "created_at"
#       type    = "string"
#       comment = "Nome da coluna na origem: created_at;"
#     },
#     {
#       name    = "updated_at"
#       type    = "string"
#       comment = "Nome da coluna na origem: updated_at;"
#     }
#   ]
# }

module "tb_usuario" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_usuario"
  database_name          = "db_raw_pago_portal"
  description            = "db_raw_pago_portal.tb_usuario"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-raw/db_raw_pago_portal/tb_usuario/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "nome"
      type    = "string"
      comment = "Nome da coluna na origem: nome;"
    },
    {
      name    = "email"
      type    = "string"
      comment = "Nome da coluna na origem: email;"
    },
    {
      name    = "senha"
      type    = "string"
      comment = "Nome da coluna na origem: senha;"
    },
    {
      name    = "telefone"
      type    = "string"
      comment = "Nome da coluna na origem: telefone;"
    },
    {
      name    = "id_perfil"
      type    = "int"
      comment = "Nome da coluna na origem: id_perfil;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_grupo_cliente"
      type    = "int"
      comment = "Nome da coluna na origem: id_grupo_cliente;"
    },
    {
      name    = "ativo"
      type    = "int"
      comment = "Nome da coluna na origem: ativo;"
    },
    {
      name    = "id_equipe"
      type    = "int"
      comment = "Nome da coluna na origem: id_equipe;"
    },
    {
      name    = "id_projeto"
      type    = "int"
      comment = "Nome da coluna na origem: id_projeto;"
    },
    {
      name    = "login_cpf_cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: login_cpf_cnpj;"
    },
    {
      name    = "id_setor"
      type    = "int"
      comment = "Nome da coluna na origem: id_setor;"
    },
    {
      name    = "matricula_bnb"
      type    = "string"
      comment = "Nome da coluna na origem: matricula_bnb;"
    },
    {
      name    = "cod_parceiro"
      type    = "string"
      comment = "Nome da coluna na origem: cod_parceiro;"
    },
    {
      name    = "tabela_minima_debito"
      type    = "int"
      comment = "Nome da coluna na origem: tabela_minima_debito;"
    },
    {
      name    = "tabela_minima_credito"
      type    = "int"
      comment = "Nome da coluna na origem: tabela_minima_credito;"
    },
    {
      name    = "permissao_alterar_tabelas_credito"
      type    = "boolean"
      comment = "Nome da coluna na origem: permissao_alterar_tabelas_credito;"
    },
    {
      name    = "senha_expirada"
      type    = "boolean"
      comment = "Nome da coluna na origem: senha_expirada;"
    },
    {
      name    = "tentativas_login"
      type    = "int"
      comment = "Nome da coluna na origem: tentativas_login;"
    },
    {
      name    = "api_key"
      type    = "string"
      comment = "Nome da coluna na origem: api_key;"
    },
    {
      name    = "url"
      type    = "int"
      comment = "Nome da coluna na origem: url;"
    },
    {
      name    = "token_biometria"
      type    = "string"
      comment = "Nome da coluna na origem: token_biometria;"
    },
    {
      name    = "permite_alteracao_portal"
      type    = "boolean"
      comment = "Nome da coluna na origem: permite_alteracao_portal;"
    },
    {
      name    = "cpf_cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cpf_cnpj;"
    },
    {
      name    = "mov_estoque"
      type    = "boolean"
      comment = "Nome da coluna na origem: mov_estoque;"
    },
    {
      name    = "data_ultima_senha"
      type    = "date"
      comment = "Nome da coluna na origem: data_ultima_senha;"
    }
  ]
}

module "tb_usuario2" {
  source = "./modules/aws_glue/table"

  table_name             = "tb_usuario"
  database_name          = "db_trusted_pago_portal"
  description            = "db_trusted_pago_portal.tb_usuario"
  table_type             = "EXTERNAL_TABLE"
  location               = "s3://ex-grt-aos-spdt-datalake-trusted/db_trusted_pago_portal/tb_usuario/"
  input_format           = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
  output_format          = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"
  serialization_library  = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"
  ser_de_info_parameters = {}

  columns = [
    {
      name    = "id_usuario"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_usuario;"
    },
    {
      name    = "nome"
      type    = "string"
      comment = "Nome da coluna na origem: nome;"
    },
    {
      name    = "email"
      type    = "string"
      comment = "Nome da coluna na origem: email;"
    },
    {
      name    = "senha"
      type    = "string"
      comment = "Nome da coluna na origem: senha;"
    },
    {
      name    = "telefone"
      type    = "string"
      comment = "Nome da coluna na origem: telefone;"
    },
    {
      name    = "id_perfil"
      type    = "int"
      comment = "Nome da coluna na origem: id_perfil;"
    },
    {
      name    = "id_parceiro"
      type    = "int"
      comment = "Nome da coluna na origem: id_parceiro;"
    },
    {
      name    = "id_cliente"
      type    = "bigint"
      comment = "Nome da coluna na origem: id_cliente;"
    },
    {
      name    = "id_grupo_cliente"
      type    = "int"
      comment = "Nome da coluna na origem: id_grupo_cliente;"
    },
    {
      name    = "ativo"
      type    = "int"
      comment = "Nome da coluna na origem: ativo;"
    },
    {
      name    = "id_equipe"
      type    = "int"
      comment = "Nome da coluna na origem: id_equipe;"
    },
    {
      name    = "id_projeto"
      type    = "int"
      comment = "Nome da coluna na origem: id_projeto;"
    },
    {
      name    = "login_cpf_cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: login_cpf_cnpj;"
    },
    {
      name    = "id_setor"
      type    = "int"
      comment = "Nome da coluna na origem: id_setor;"
    },
    {
      name    = "matricula_bnb"
      type    = "string"
      comment = "Nome da coluna na origem: matricula_bnb;"
    },
    {
      name    = "cod_parceiro"
      type    = "string"
      comment = "Nome da coluna na origem: cod_parceiro;"
    },
    {
      name    = "tabela_minima_debito"
      type    = "int"
      comment = "Nome da coluna na origem: tabela_minima_debito;"
    },
    {
      name    = "tabela_minima_credito"
      type    = "int"
      comment = "Nome da coluna na origem: tabela_minima_credito;"
    },
    {
      name    = "permissao_alterar_tabelas_credito"
      type    = "boolean"
      comment = "Nome da coluna na origem: permissao_alterar_tabelas_credito;"
    },
    {
      name    = "senha_expirada"
      type    = "boolean"
      comment = "Nome da coluna na origem: senha_expirada;"
    },
    {
      name    = "tentativas_login"
      type    = "int"
      comment = "Nome da coluna na origem: tentativas_login;"
    },
    {
      name    = "api_key"
      type    = "string"
      comment = "Nome da coluna na origem: api_key;"
    },
    {
      name    = "url"
      type    = "int"
      comment = "Nome da coluna na origem: url;"
    },
    {
      name    = "token_biometria"
      type    = "string"
      comment = "Nome da coluna na origem: token_biometria;"
    },
    {
      name    = "permite_alteracao_portal"
      type    = "boolean"
      comment = "Nome da coluna na origem: permite_alteracao_portal;"
    },
    {
      name    = "cpf_cnpj"
      type    = "string"
      comment = "Nome da coluna na origem: cpf_cnpj;"
    },
    {
      name    = "mov_estoque"
      type    = "boolean"
      comment = "Nome da coluna na origem: mov_estoque;"
    },
    {
      name    = "data_ultima_senha"
      type    = "date"
      comment = "Nome da coluna na origem: data_ultima_senha;"
    }
  ]
}